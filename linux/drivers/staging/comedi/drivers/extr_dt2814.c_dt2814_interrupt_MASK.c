#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dt2814_private {int /*<<< orphan*/  ntrig; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; struct dt2814_private* private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 scalar_t__ DT2814_CSR ; 
 scalar_t__ DT2814_DATA ; 
 int DT2814_FINISH ; 
 int DT2814_TIMEOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	int lo, hi;
	struct comedi_device *dev = d;
	struct dt2814_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	int data;

	if (!dev->attached) {
		FUNC1(dev->class_dev, "spurious interrupt\n");
		return IRQ_HANDLED;
	}

	hi = FUNC2(dev->iobase + DT2814_DATA);
	lo = FUNC2(dev->iobase + DT2814_DATA);

	data = (hi << 4) | (lo >> 4);

	if (!(--devpriv->ntrig)) {
		int i;

		FUNC3(0, dev->iobase + DT2814_CSR);
		/*
		 * note: turning off timed mode triggers another
		 * sample.
		 */

		for (i = 0; i < DT2814_TIMEOUT; i++) {
			if (FUNC2(dev->iobase + DT2814_CSR) & DT2814_FINISH)
				break;
		}
		FUNC2(dev->iobase + DT2814_DATA);
		FUNC2(dev->iobase + DT2814_DATA);

		s->async->events |= COMEDI_CB_EOA;
	}
	FUNC0(dev, s);
	return IRQ_HANDLED;
}