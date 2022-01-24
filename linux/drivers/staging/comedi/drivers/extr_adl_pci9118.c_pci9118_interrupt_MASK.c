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
struct pci9118_private {int ai12_startstop; unsigned int ai_ctrl; scalar_t__ usedma; scalar_t__ ai_neverending; int /*<<< orphan*/  ai_do; scalar_t__ iobase_a; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; struct pci9118_private* private; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int events; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 unsigned int ANY_S593X_INT ; 
 int COMEDI_CB_ERROR ; 
 int COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int MASTER_ABORT_INT ; 
 scalar_t__ PCI9118_AI_CTRL_REG ; 
 unsigned int PCI9118_AI_STATUS_ADOR ; 
 unsigned int PCI9118_AI_STATUS_ADOS ; 
 unsigned int PCI9118_AI_STATUS_BOVER ; 
 unsigned int PCI9118_AI_STATUS_DTH ; 
 unsigned int PCI9118_AI_STATUS_NFULL ; 
 scalar_t__ PCI9118_AI_STATUS_REG ; 
 unsigned int PCI9118_INT_CTRL_DTRG ; 
 scalar_t__ PCI9118_INT_CTRL_REG ; 
 int START_AI_EXT ; 
 int STOP_AI_EXT ; 
 unsigned int TARGET_ABORT_INT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct pci9118_private *devpriv = dev->private;
	unsigned int intsrc;	/* IRQ reasons from card */
	unsigned int intcsr;	/* INT register from AMCC chip */
	unsigned int adstat;	/* STATUS register */

	if (!dev->attached)
		return IRQ_NONE;

	intsrc = FUNC2(dev->iobase + PCI9118_INT_CTRL_REG) & 0xf;
	intcsr = FUNC2(devpriv->iobase_a + AMCC_OP_REG_INTCSR);

	if (!intsrc && !(intcsr & ANY_S593X_INT))
		return IRQ_NONE;

	FUNC3(intcsr | 0x00ff0000, devpriv->iobase_a + AMCC_OP_REG_INTCSR);

	if (intcsr & MASTER_ABORT_INT) {
		FUNC1(dev->class_dev, "AMCC IRQ - MASTER DMA ABORT!\n");
		s->async->events |= COMEDI_CB_ERROR;
		goto interrupt_exit;
	}

	if (intcsr & TARGET_ABORT_INT) {
		FUNC1(dev->class_dev, "AMCC IRQ - TARGET DMA ABORT!\n");
		s->async->events |= COMEDI_CB_ERROR;
		goto interrupt_exit;
	}

	adstat = FUNC2(dev->iobase + PCI9118_AI_STATUS_REG);
	if ((adstat & PCI9118_AI_STATUS_NFULL) == 0) {
		FUNC1(dev->class_dev,
			"A/D FIFO Full status (Fatal Error!)\n");
		s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
		goto interrupt_exit;
	}
	if (adstat & PCI9118_AI_STATUS_BOVER) {
		FUNC1(dev->class_dev,
			"A/D Burst Mode Overrun Status (Fatal Error!)\n");
		s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
		goto interrupt_exit;
	}
	if (adstat & PCI9118_AI_STATUS_ADOS) {
		FUNC1(dev->class_dev, "A/D Over Speed Status (Warning!)\n");
		s->async->events |= COMEDI_CB_ERROR;
		goto interrupt_exit;
	}
	if (adstat & PCI9118_AI_STATUS_ADOR) {
		FUNC1(dev->class_dev, "A/D Overrun Status (Fatal Error!)\n");
		s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
		goto interrupt_exit;
	}

	if (!devpriv->ai_do)
		return IRQ_HANDLED;

	if (devpriv->ai12_startstop) {
		if ((adstat & PCI9118_AI_STATUS_DTH) &&
		    (intsrc & PCI9118_INT_CTRL_DTRG)) {
			/* start/stop of measure */
			if (devpriv->ai12_startstop & START_AI_EXT) {
				/* deactivate EXT trigger */
				devpriv->ai12_startstop &= ~START_AI_EXT;
				if (!(devpriv->ai12_startstop & STOP_AI_EXT))
					FUNC6(dev, false);

				/* start pacer */
				FUNC7(dev, devpriv->ai_do);
				FUNC3(devpriv->ai_ctrl,
				     dev->iobase + PCI9118_AI_CTRL_REG);
			} else if (devpriv->ai12_startstop & STOP_AI_EXT) {
				/* deactivate EXT trigger */
				devpriv->ai12_startstop &= ~STOP_AI_EXT;
				FUNC6(dev, false);

				/* on next interrupt measure will stop */
				devpriv->ai_neverending = 0;
			}
		}
	}

	if (devpriv->usedma)
		FUNC4(dev, s);
	else
		FUNC5(dev, s);

interrupt_exit:
	FUNC0(dev, s);
	return IRQ_HANDLED;
}