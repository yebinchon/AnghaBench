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
struct das1800_private {int irq_dma_bits; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; struct comedi_subdevice* read_subdev; struct das1800_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned int ADC ; 
 unsigned int CLEAR_INTR_MASK ; 
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 unsigned int CT0TC ; 
 scalar_t__ DAS1800_SELECT ; 
 scalar_t__ DAS1800_STATUS ; 
 int DMA_ENABLED ; 
 unsigned int FHF ; 
 unsigned int FNE ; 
 unsigned int OVF ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev)
{
	struct das1800_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int status = FUNC6(dev->iobase + DAS1800_STATUS);

	/* select adc register (spinlock is already held) */
	FUNC7(ADC, dev->iobase + DAS1800_SELECT);

	/* get samples with dma, fifo, or polled as necessary */
	if (devpriv->irq_dma_bits & DMA_ENABLED)
		FUNC2(dev, s, status);
	else if (status & FHF)
		FUNC3(dev, s);
	else if (status & FNE)
		FUNC4(dev, s);

	/* if the card's fifo has overflowed */
	if (status & OVF) {
		/*  clear OVF interrupt bit */
		FUNC7(CLEAR_INTR_MASK & ~OVF, dev->iobase + DAS1800_STATUS);
		FUNC5(dev->class_dev, "FIFO overflow\n");
		async->events |= COMEDI_CB_ERROR;
		FUNC0(dev, s);
		return;
	}
	/*  stop taking data if appropriate */
	/* stop_src TRIG_EXT */
	if (status & CT0TC) {
		/*  clear CT0TC interrupt bit */
		FUNC7(CLEAR_INTR_MASK & ~CT0TC, dev->iobase + DAS1800_STATUS);
		/* get all remaining samples before quitting */
		if (devpriv->irq_dma_bits & DMA_ENABLED)
			FUNC1(dev, s);
		else
			FUNC4(dev, s);
		async->events |= COMEDI_CB_EOA;
	} else if (cmd->stop_src == TRIG_COUNT &&
		   async->scans_done >= cmd->stop_arg) {
		async->events |= COMEDI_CB_EOA;
	}

	FUNC0(dev, s);
}