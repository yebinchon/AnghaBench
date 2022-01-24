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
struct pcl818_private {int ai_cmd_running; scalar_t__ usefifo; scalar_t__ act_chanlist_pos; scalar_t__ ai_cmd_canceled; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {scalar_t__ cur_dma; } ;
struct comedi_device {int /*<<< orphan*/  pacer; scalar_t__ iobase; int /*<<< orphan*/  irq; struct pcl818_private* private; } ;
struct comedi_cmd {scalar_t__ convert_src; int /*<<< orphan*/  chanlist; int /*<<< orphan*/  chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ PCL818_CNTENABLE_REG ; 
 unsigned int PCL818_CTRL_DMAE ; 
 unsigned int PCL818_CTRL_EXT_TRIG ; 
 unsigned int PCL818_CTRL_INTE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PCL818_CTRL_PACER_TRIG ; 
 scalar_t__ PCL818_CTRL_REG ; 
 scalar_t__ PCL818_FI_ENABLE ; 
 scalar_t__ TRIG_TIMER ; 
 unsigned int FUNC1 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			 struct comedi_subdevice *s)
{
	struct pcl818_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int ctrl = 0;
	unsigned int seglen;

	if (devpriv->ai_cmd_running)
		return -EBUSY;

	seglen = FUNC1(dev, s, cmd->chanlist, cmd->chanlist_len);
	if (seglen < 1)
		return -EINVAL;
	FUNC5(dev, cmd->chanlist, seglen);

	devpriv->ai_cmd_running = 1;
	devpriv->ai_cmd_canceled = 0;
	devpriv->act_chanlist_pos = 0;

	if (cmd->convert_src == TRIG_TIMER)
		ctrl |= PCL818_CTRL_PACER_TRIG;
	else
		ctrl |= PCL818_CTRL_EXT_TRIG;

	FUNC4(0, dev->iobase + PCL818_CNTENABLE_REG);

	if (dma) {
		/* setup and enable dma for the first buffer */
		dma->cur_dma = 0;
		FUNC6(dev, s, 0);

		ctrl |= PCL818_CTRL_INTE | FUNC0(dev->irq) |
			PCL818_CTRL_DMAE;
	} else if (devpriv->usefifo) {
		/* enable FIFO */
		FUNC4(1, dev->iobase + PCL818_FI_ENABLE);
	} else {
		ctrl |= PCL818_CTRL_INTE | FUNC0(dev->irq);
	}
	FUNC4(ctrl, dev->iobase + PCL818_CTRL_REG);

	if (cmd->convert_src == TRIG_TIMER) {
		FUNC3(dev->pacer);
		FUNC2(dev->pacer, 1, 2, true);
	}

	return 0;
}