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
typedef  int u8 ;
struct pcidas64_private {scalar_t__ plx9080_iobase; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct comedi_subdevice* write_subdev; struct pcidas64_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 unsigned short DAC_DONE_BIT ; 
 int PLX_DMACSR_CLEARINTR ; 
 int PLX_DMACSR_DONE ; 
 int PLX_DMACSR_ENABLE ; 
 unsigned int PLX_INTCSR_DMA0IA ; 
 scalar_t__ PLX_REG_DMACSR0 ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 scalar_t__ FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev,
				unsigned short status, unsigned int plx_status)
{
	struct pcidas64_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->write_subdev;
	struct comedi_async *async;
	struct comedi_cmd *cmd;
	u8 dma0_status;
	unsigned long flags;

	/* board might not support ao, in which case write_subdev is NULL */
	if (!s)
		return;
	async = s->async;
	cmd = &async->cmd;

	/* spin lock makes sure no one else changes plx dma control reg */
	FUNC6(&dev->spinlock, flags);
	dma0_status = FUNC4(devpriv->plx9080_iobase + PLX_REG_DMACSR0);
	if (plx_status & PLX_INTCSR_DMA0IA) {	/*  dma chan 0 interrupt */
		if ((dma0_status & PLX_DMACSR_ENABLE) &&
		    !(dma0_status & PLX_DMACSR_DONE)) {
			FUNC8(PLX_DMACSR_ENABLE | PLX_DMACSR_CLEARINTR,
			       devpriv->plx9080_iobase + PLX_REG_DMACSR0);
		} else {
			FUNC8(PLX_DMACSR_CLEARINTR,
			       devpriv->plx9080_iobase + PLX_REG_DMACSR0);
		}
		FUNC7(&dev->spinlock, flags);
		if (dma0_status & PLX_DMACSR_ENABLE) {
			FUNC3(dev, cmd);
			/* try to recover from dma end-of-chain event */
			if (FUNC0(dev, dma0_status))
				FUNC5(dev);
		}
	} else {
		FUNC7(&dev->spinlock, flags);
	}

	if ((status & DAC_DONE_BIT)) {
		if ((cmd->stop_src == TRIG_COUNT &&
		     async->scans_done >= cmd->stop_arg) ||
		    FUNC2(dev))
			async->events |= COMEDI_CB_EOA;
		else
			async->events |= COMEDI_CB_ERROR;
	}
	FUNC1(dev, s);
}