#!/usr/bin/env perl
use strict;
use warnings;
use Tickit;
use Tickit::Widget::Breadcrumb;
use Tickit::Widget::Entry;
use Tickit::Widget::VBox;
my $vb = Tickit::Widget::VBox->new;
my $w = Tickit::Widget::Breadcrumb->new;
$w->adapter->push([
	qw(first second third fourth fifth)
]);
$vb->add($w);
$vb->add(Tickit::Widget::Entry->new(
	on_enter => sub {
		$w->adapter->push([
			$_[1]
		])
	}
));
Tickit->new(root => $vb)->run;

