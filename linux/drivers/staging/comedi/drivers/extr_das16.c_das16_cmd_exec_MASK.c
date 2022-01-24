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
struct TYPE_2__ {scalar_t__ expires; } ;
struct das16_private_struct {int timer_running; int ctrl_reg; scalar_t__ can_burst; TYPE_1__ timer; struct comedi_isadma* dma; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma {scalar_t__ cur_dma; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; int /*<<< orphan*/  class_dev; struct das16_private_struct* private; } ;
struct comedi_cmd {int chanlist_len; int flags; scalar_t__ convert_src; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int CMDF_PRIORITY ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS1600_BURST_REG ; 
 unsigned int DAS1600_BURST_VAL ; 
 unsigned int DAS1600_CONV_DISABLE ; 
 scalar_t__ DAS1600_CONV_REG ; 
 int DAS16_CTRL_DMAE ; 
 int DAS16_CTRL_EXT_PACER ; 
 int DAS16_CTRL_INTE ; 
 int DAS16_CTRL_INT_PACER ; 
 int DAS16_CTRL_PACING_MASK ; 
 scalar_t__ DAS16_CTRL_REG ; 
 unsigned int FUNC2 (int) ; 
 scalar_t__ DAS16_PACER_REG ; 
 scalar_t__ TRIG_EXT ; 
 scalar_t__ TRIG_NOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct das16_private_struct *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int first_chan = FUNC0(cmd->chanlist[0]);
	unsigned int last_chan = FUNC0(cmd->chanlist[cmd->chanlist_len - 1]);
	unsigned int range = FUNC1(cmd->chanlist[0]);
	unsigned int byte;
	unsigned long flags;

	if (cmd->flags & CMDF_PRIORITY) {
		FUNC7(dev->class_dev,
			"isa dma transfers cannot be performed with CMDF_PRIORITY, aborting\n");
		return -1;
	}

	if (devpriv->can_burst)
		FUNC8(DAS1600_CONV_DISABLE, dev->iobase + DAS1600_CONV_REG);

	/* set mux and range for chanlist scan */
	FUNC4(dev, first_chan, last_chan, range);

	/* set counter mode and counts */
	cmd->convert_arg = FUNC6(dev, cmd->convert_arg, cmd->flags);

	/* enable counters */
	byte = 0;
	if (devpriv->can_burst) {
		if (cmd->convert_src == TRIG_NOW) {
			FUNC8(DAS1600_BURST_VAL,
			     dev->iobase + DAS1600_BURST_REG);
			/*  set burst length */
			byte |= FUNC2(cmd->chanlist_len - 1);
		} else {
			FUNC8(0, dev->iobase + DAS1600_BURST_REG);
		}
	}
	FUNC8(byte, dev->iobase + DAS16_PACER_REG);

	/* set up dma transfer */
	dma->cur_dma = 0;
	FUNC5(dev, s, 0);

	/*  set up timer */
	FUNC9(&dev->spinlock, flags);
	devpriv->timer_running = 1;
	devpriv->timer.expires = jiffies + FUNC11();
	FUNC3(&devpriv->timer);

	/* enable DMA interrupt with external or internal pacing */
	devpriv->ctrl_reg &= ~(DAS16_CTRL_INTE | DAS16_CTRL_PACING_MASK);
	devpriv->ctrl_reg |= DAS16_CTRL_DMAE;
	if (cmd->convert_src == TRIG_EXT)
		devpriv->ctrl_reg |= DAS16_CTRL_EXT_PACER;
	else
		devpriv->ctrl_reg |= DAS16_CTRL_INT_PACER;
	FUNC8(devpriv->ctrl_reg, dev->iobase + DAS16_CTRL_REG);

	if (devpriv->can_burst)
		FUNC8(0, dev->iobase + DAS1600_CONV_REG);
	FUNC10(&dev->spinlock, flags);

	return 0;
}