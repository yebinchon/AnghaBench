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
struct comedi_device {int /*<<< orphan*/  spinlock; struct cb_pcidas_private* private; struct cb_pcidas_board* board_ptr; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct comedi_async {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;
struct cb_pcidas_private {int ctrl; int ao_ctrl; scalar_t__ pcibar1; } ;
struct cb_pcidas_board {int /*<<< orphan*/  fifo_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCIDAS_AO_DACEN ; 
 int PCIDAS_AO_EMPTY ; 
 scalar_t__ PCIDAS_AO_REG ; 
 int PCIDAS_AO_START ; 
 int PCIDAS_CTRL_DAEMI ; 
 int PCIDAS_CTRL_DAEMIE ; 
 int PCIDAS_CTRL_DAHFI ; 
 int PCIDAS_CTRL_DAHFIE ; 
 scalar_t__ PCIDAS_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int trig_num)
{
	const struct cb_pcidas_board *board = dev->board_ptr;
	struct cb_pcidas_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned long flags;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	FUNC0(dev, s, board->fifo_size);

	/*  enable dac half-full and empty interrupts */
	FUNC2(&dev->spinlock, flags);
	devpriv->ctrl |= PCIDAS_CTRL_DAEMIE | PCIDAS_CTRL_DAHFIE;

	/*  enable and clear interrupts */
	FUNC1(devpriv->ctrl | PCIDAS_CTRL_DAEMI | PCIDAS_CTRL_DAHFI,
	     devpriv->pcibar1 + PCIDAS_CTRL_REG);

	/*  start dac */
	devpriv->ao_ctrl |= PCIDAS_AO_START | PCIDAS_AO_DACEN | PCIDAS_AO_EMPTY;
	FUNC1(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);

	FUNC3(&dev->spinlock, flags);

	async->inttrig = NULL;

	return 0;
}