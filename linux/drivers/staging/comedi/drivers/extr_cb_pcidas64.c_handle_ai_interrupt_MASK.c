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
struct pcidas64_private {scalar_t__ ai_cmd_running; scalar_t__ plx9080_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  class_dev; struct comedi_subdevice* read_subdev; struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned short ADC_DONE_BIT ; 
 unsigned short ADC_INTR_PENDING_BIT ; 
 unsigned short ADC_OVERRUN_BIT ; 
 unsigned short ADC_STOP_BIT ; 
 int CMDF_WAKE_EOS ; 
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 scalar_t__ LAYOUT_4020 ; 
 int PLX_DMACSR_CLEARINTR ; 
 int PLX_DMACSR_ENABLE ; 
 unsigned int PLX_INTCSR_DMA1IA ; 
 scalar_t__ PLX_REG_DMACSR1 ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_EXT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev,
				unsigned short status,
				unsigned int plx_status)
{
	const struct pcidas64_board *board = dev->board_ptr;
	struct pcidas64_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	u8 dma1_status;
	unsigned long flags;

	/* check for fifo overrun */
	if (status & ADC_OVERRUN_BIT) {
		FUNC1(dev->class_dev, "fifo overrun\n");
		async->events |= COMEDI_CB_ERROR;
	}
	/* spin lock makes sure no one else changes plx dma control reg */
	FUNC5(&dev->spinlock, flags);
	dma1_status = FUNC4(devpriv->plx9080_iobase + PLX_REG_DMACSR1);
	if (plx_status & PLX_INTCSR_DMA1IA) {	/* dma chan 1 interrupt */
		FUNC7((dma1_status & PLX_DMACSR_ENABLE) | PLX_DMACSR_CLEARINTR,
		       devpriv->plx9080_iobase + PLX_REG_DMACSR1);

		if (dma1_status & PLX_DMACSR_ENABLE)
			FUNC2(dev, 1);
	}
	FUNC6(&dev->spinlock, flags);

	/* drain fifo with pio */
	if ((status & ADC_DONE_BIT) ||
	    ((cmd->flags & CMDF_WAKE_EOS) &&
	     (status & ADC_INTR_PENDING_BIT) &&
	     (board->layout != LAYOUT_4020))) {
		FUNC5(&dev->spinlock, flags);
		if (devpriv->ai_cmd_running) {
			FUNC6(&dev->spinlock, flags);
			FUNC3(dev);
		} else {
			FUNC6(&dev->spinlock, flags);
		}
	}
	/* if we are have all the data, then quit */
	if ((cmd->stop_src == TRIG_COUNT &&
	     async->scans_done >= cmd->stop_arg) ||
	    (cmd->stop_src == TRIG_EXT && (status & ADC_STOP_BIT)))
		async->events |= COMEDI_CB_EOA;

	FUNC0(dev, s);
}