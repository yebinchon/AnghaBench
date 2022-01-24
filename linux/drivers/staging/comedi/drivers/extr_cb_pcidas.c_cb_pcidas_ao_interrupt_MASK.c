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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct comedi_subdevice* write_subdev; struct cb_pcidas_private* private; struct cb_pcidas_board* board_ptr; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;
struct cb_pcidas_private {scalar_t__ pcibar4; } ;
struct cb_pcidas_board {int fifo_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int PCIDAS_AO_EMPTY ; 
 scalar_t__ PCIDAS_AO_REG ; 
 unsigned int PCIDAS_CTRL_DAEMI ; 
 unsigned int PCIDAS_CTRL_DAHFI ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
					   unsigned int status)
{
	const struct cb_pcidas_board *board = dev->board_ptr;
	struct cb_pcidas_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->write_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int irq_clr = 0;

	if (status & PCIDAS_CTRL_DAEMI) {
		irq_clr |= PCIDAS_CTRL_DAEMI;

		if (FUNC3(devpriv->pcibar4 + PCIDAS_AO_REG) & PCIDAS_AO_EMPTY) {
			if (cmd->stop_src == TRIG_COUNT &&
			    async->scans_done >= cmd->stop_arg) {
				async->events |= COMEDI_CB_EOA;
			} else {
				FUNC2(dev->class_dev, "dac fifo underflow\n");
				async->events |= COMEDI_CB_ERROR;
			}
		}
	} else if (status & PCIDAS_CTRL_DAHFI) {
		irq_clr |= PCIDAS_CTRL_DAHFI;

		FUNC0(dev, s, board->fifo_size / 2);
	}

	FUNC1(dev, s);

	return irq_clr;
}