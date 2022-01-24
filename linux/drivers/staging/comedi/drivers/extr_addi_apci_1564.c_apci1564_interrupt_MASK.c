#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int state; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; struct apci1564_private* private; } ;
struct apci1564_private {unsigned long counters; scalar_t__ timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ADDI_TCW_CTRL_REG ; 
 unsigned int ADDI_TCW_IRQ ; 
 scalar_t__ ADDI_TCW_IRQ_REG ; 
 unsigned long FUNC0 (unsigned int) ; 
 int APCI1564_DI_INT_MODE_MASK ; 
 scalar_t__ APCI1564_DI_INT_STATUS_REG ; 
 unsigned int APCI1564_DI_IRQ_ENA ; 
 scalar_t__ APCI1564_DI_IRQ_REG ; 
 int APCI1564_EVENT_COS ; 
 int FUNC1 (unsigned int) ; 
 int APCI1564_EVENT_MASK ; 
 int APCI1564_EVENT_TIMER ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct apci1564_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int status;
	unsigned int ctrl;
	unsigned int chan;

	s->state &= ~APCI1564_EVENT_MASK;

	status = FUNC4(dev->iobase + APCI1564_DI_IRQ_REG);
	if (status & APCI1564_DI_IRQ_ENA) {
		/* get the COS interrupt state and set the event flag */
		s->state = FUNC4(dev->iobase + APCI1564_DI_INT_STATUS_REG);
		s->state &= APCI1564_DI_INT_MODE_MASK;
		s->state |= APCI1564_EVENT_COS;

		/* clear the interrupt */
		FUNC5(status & ~APCI1564_DI_IRQ_ENA,
		     dev->iobase + APCI1564_DI_IRQ_REG);
		FUNC5(status, dev->iobase + APCI1564_DI_IRQ_REG);
	}

	status = FUNC4(devpriv->timer + ADDI_TCW_IRQ_REG);
	if (status & ADDI_TCW_IRQ) {
		s->state |= APCI1564_EVENT_TIMER;

		/* clear the interrupt */
		ctrl = FUNC4(devpriv->timer + ADDI_TCW_CTRL_REG);
		FUNC5(0x0, devpriv->timer + ADDI_TCW_CTRL_REG);
		FUNC5(ctrl, devpriv->timer + ADDI_TCW_CTRL_REG);
	}

	if (devpriv->counters) {
		for (chan = 0; chan < 3; chan++) {
			unsigned long iobase;

			iobase = devpriv->counters + FUNC0(chan);

			status = FUNC4(iobase + ADDI_TCW_IRQ_REG);
			if (status & ADDI_TCW_IRQ) {
				s->state |= FUNC1(chan);

				/* clear the interrupt */
				ctrl = FUNC4(iobase + ADDI_TCW_CTRL_REG);
				FUNC5(0x0, iobase + ADDI_TCW_CTRL_REG);
				FUNC5(ctrl, iobase + ADDI_TCW_CTRL_REG);
			}
		}
	}

	if (s->state & APCI1564_EVENT_MASK) {
		FUNC2(s, &s->state, 1);
		FUNC3(dev, s);
	}

	return IRQ_HANDLED;
}