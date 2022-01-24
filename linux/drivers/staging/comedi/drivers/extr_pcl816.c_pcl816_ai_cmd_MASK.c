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
struct pcl816_private {int ai_cmd_running; scalar_t__ ai_cmd_canceled; scalar_t__ ai_poll_ptr; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {int chan; scalar_t__ cur_dma; } ;
struct comedi_device {int irq; scalar_t__ iobase; int /*<<< orphan*/  pacer; struct pcl816_private* private; } ;
struct comedi_cmd {scalar_t__ convert_src; int /*<<< orphan*/  chanlist; int /*<<< orphan*/  chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int I8254_BINARY ; 
 int I8254_MODE1 ; 
 unsigned int PCL816_CTRL_DMAEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PCL816_CTRL_EXT_TRIG ; 
 unsigned int PCL816_CTRL_INTEN ; 
 unsigned int PCL816_CTRL_PACER_TRIG ; 
 scalar_t__ PCL816_CTRL_REG ; 
 scalar_t__ PCL816_STATUS_REG ; 
 scalar_t__ TRIG_TIMER ; 
 unsigned int FUNC1 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct pcl816_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int ctrl;
	unsigned int seglen;

	if (devpriv->ai_cmd_running)
		return -EBUSY;

	seglen = FUNC1(dev, s, cmd->chanlist, cmd->chanlist_len);
	if (seglen < 1)
		return -EINVAL;
	FUNC7(dev, cmd->chanlist, seglen);
	FUNC9(1);

	devpriv->ai_cmd_running = 1;
	devpriv->ai_poll_ptr = 0;
	devpriv->ai_cmd_canceled = 0;

	/* setup and enable dma for the first buffer */
	dma->cur_dma = 0;
	FUNC8(dev, s, 0);

	FUNC3(dev->pacer, 0, I8254_MODE1 | I8254_BINARY);
	FUNC5(dev->pacer, 0, 0x0ff);
	FUNC9(1);
	FUNC4(dev->pacer);
	FUNC2(dev->pacer, 1, 2, true);

	ctrl = PCL816_CTRL_INTEN | PCL816_CTRL_DMAEN |
	       FUNC0(0);
	if (cmd->convert_src == TRIG_TIMER)
		ctrl |= PCL816_CTRL_PACER_TRIG;
	else	/* TRIG_EXT */
		ctrl |= PCL816_CTRL_EXT_TRIG;

	FUNC6(ctrl, dev->iobase + PCL816_CTRL_REG);
	FUNC6((dma->chan << 4) | dev->irq,
	     dev->iobase + PCL816_STATUS_REG);

	return 0;
}