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
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; struct apci1032_private* private; } ;
struct apci1032_private {scalar_t__ amcc_iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 unsigned int APCI1032_CTRL_INT_ENA ; 
 scalar_t__ APCI1032_CTRL_REG ; 
 scalar_t__ APCI1032_STATUS_REG ; 
 int INTCSR_INTR_ASSERTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct apci1032_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int ctrl;

	/* check interrupt is from this device */
	if ((FUNC2(devpriv->amcc_iobase + AMCC_OP_REG_INTCSR) &
	     INTCSR_INTR_ASSERTED) == 0)
		return IRQ_NONE;

	/* check interrupt is enabled */
	ctrl = FUNC2(dev->iobase + APCI1032_CTRL_REG);
	if ((ctrl & APCI1032_CTRL_INT_ENA) == 0)
		return IRQ_HANDLED;

	/* disable the interrupt */
	FUNC3(ctrl & ~APCI1032_CTRL_INT_ENA, dev->iobase + APCI1032_CTRL_REG);

	s->state = FUNC2(dev->iobase + APCI1032_STATUS_REG) & 0xffff;
	FUNC0(s, &s->state, 1);
	FUNC1(dev, s);

	/* enable the interrupt */
	FUNC3(ctrl, dev->iobase + APCI1032_CTRL_REG);

	return IRQ_HANDLED;
}