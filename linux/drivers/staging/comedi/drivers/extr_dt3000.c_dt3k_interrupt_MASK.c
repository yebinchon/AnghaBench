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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 unsigned int DPR_INTR_ADFULL ; 
 unsigned int DPR_INTR_ADHWERR ; 
 unsigned int DPR_INTR_ADSWERR ; 
 scalar_t__ DPR_INTR_FLAG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int debug_n_ints ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int status;

	if (!dev->attached)
		return IRQ_NONE;

	status = FUNC2(dev->mmio + DPR_INTR_FLAG);

	if (status & DPR_INTR_ADFULL)
		FUNC1(dev, s);

	if (status & (DPR_INTR_ADSWERR | DPR_INTR_ADHWERR))
		s->async->events |= COMEDI_CB_ERROR;

	debug_n_ints++;
	if (debug_n_ints >= 10)
		s->async->events |= COMEDI_CB_EOA;

	FUNC0(dev, s);
	return IRQ_HANDLED;
}