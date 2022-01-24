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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int ME4000_AI_CTRL_HF_IRQ_RESET ; 
 scalar_t__ ME4000_AI_CTRL_REG ; 
 unsigned int ME4000_AI_CTRL_SC_IRQ_RESET ; 
 int ME4000_AI_FIFO_COUNT ; 
 unsigned int ME4000_AI_STATUS_EF_DATA ; 
 unsigned int ME4000_AI_STATUS_FF_DATA ; 
 unsigned int ME4000_AI_STATUS_HF_DATA ; 
 scalar_t__ ME4000_AI_STATUS_REG ; 
 int ME4000_IRQ_STATUS_AI_HF ; 
 scalar_t__ ME4000_IRQ_STATUS_REG ; 
 int ME4000_IRQ_STATUS_SC ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	unsigned int tmp;
	struct comedi_device *dev = dev_id;
	struct comedi_subdevice *s = dev->read_subdev;
	int i;
	int c = 0;
	unsigned int lval;

	if (!dev->attached)
		return IRQ_NONE;

	if (FUNC3(dev->iobase + ME4000_IRQ_STATUS_REG) &
	    ME4000_IRQ_STATUS_AI_HF) {
		/* Read status register to find out what happened */
		tmp = FUNC3(dev->iobase + ME4000_AI_STATUS_REG);

		if (!(tmp & ME4000_AI_STATUS_FF_DATA) &&
		    !(tmp & ME4000_AI_STATUS_HF_DATA) &&
		    (tmp & ME4000_AI_STATUS_EF_DATA)) {
			FUNC2(dev->class_dev, "FIFO overflow\n");
			s->async->events |= COMEDI_CB_ERROR;
			c = ME4000_AI_FIFO_COUNT;
		} else if ((tmp & ME4000_AI_STATUS_FF_DATA) &&
			   !(tmp & ME4000_AI_STATUS_HF_DATA) &&
			   (tmp & ME4000_AI_STATUS_EF_DATA)) {
			c = ME4000_AI_FIFO_COUNT / 2;
		} else {
			FUNC2(dev->class_dev, "Undefined FIFO state\n");
			s->async->events |= COMEDI_CB_ERROR;
			c = 0;
		}

		for (i = 0; i < c; i++) {
			lval = FUNC4(dev, s);
			if (!FUNC0(s, &lval, 1))
				break;
		}

		/* Work is done, so reset the interrupt */
		tmp |= ME4000_AI_CTRL_HF_IRQ_RESET;
		FUNC5(tmp, dev->iobase + ME4000_AI_CTRL_REG);
		tmp &= ~ME4000_AI_CTRL_HF_IRQ_RESET;
		FUNC5(tmp, dev->iobase + ME4000_AI_CTRL_REG);
	}

	if (FUNC3(dev->iobase + ME4000_IRQ_STATUS_REG) &
	    ME4000_IRQ_STATUS_SC) {
		/* Acquisition is complete */
		s->async->events |= COMEDI_CB_EOA;

		/* Poll data until fifo empty */
		while (FUNC3(dev->iobase + ME4000_AI_STATUS_REG) &
		       ME4000_AI_STATUS_EF_DATA) {
			lval = FUNC4(dev, s);
			if (!FUNC0(s, &lval, 1))
				break;
		}

		/* Work is done, so reset the interrupt */
		tmp = FUNC3(dev->iobase + ME4000_AI_CTRL_REG);
		tmp |= ME4000_AI_CTRL_SC_IRQ_RESET;
		FUNC5(tmp, dev->iobase + ME4000_AI_CTRL_REG);
		tmp &= ~ME4000_AI_CTRL_SC_IRQ_RESET;
		FUNC5(tmp, dev->iobase + ME4000_AI_CTRL_REG);
	}

	FUNC1(dev, s);

	return IRQ_HANDLED;
}