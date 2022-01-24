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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ scan_begin_src; int /*<<< orphan*/  flags; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  chanlist; int /*<<< orphan*/  chanlist_len; } ;
struct apci3120_private {int mode; scalar_t__ use_dma; scalar_t__ cur_dmabuf; scalar_t__ amcc; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AINT_WT_COMPLETE ; 
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 int APCI3120_MODE_EOS_IRQ_ENA ; 
 scalar_t__ APCI3120_MODE_REG ; 
 int APCI3120_MODE_TIMER2_AS_TIMER ; 
 int APCI3120_MODE_TIMER2_CLK_OSC ; 
 int /*<<< orphan*/  APCI3120_TIMER_MODE2 ; 
 scalar_t__ TRIG_EXT ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int) ; 
 unsigned int FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	struct apci3120_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int divisor;

	/* set default mode bits */
	devpriv->mode = APCI3120_MODE_TIMER2_CLK_OSC |
			APCI3120_MODE_TIMER2_AS_TIMER;

	/* AMCC- Clear write complete interrupt (DMA) */
	FUNC8(AINT_WT_COMPLETE, devpriv->amcc + AMCC_OP_REG_INTCSR);

	devpriv->cur_dmabuf = 0;

	/* load chanlist for command scan */
	FUNC2(dev, s, cmd->chanlist_len, cmd->chanlist);

	if (cmd->start_src == TRIG_EXT)
		FUNC0(dev, true);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		/*
		 * Timer 1 is used in MODE2 (rate generator) to set the
		 * start time for each scan.
		 */
		divisor = FUNC1(dev, 1, cmd->scan_begin_arg,
					       cmd->flags);
		FUNC5(dev, 1, APCI3120_TIMER_MODE2);
		FUNC6(dev, 1, divisor);
	}

	/*
	 * Timer 0 is used in MODE2 (rate generator) to set the conversion
	 * time for each acquisition.
	 */
	divisor = FUNC1(dev, 0, cmd->convert_arg, cmd->flags);
	FUNC5(dev, 0, APCI3120_TIMER_MODE2);
	FUNC6(dev, 0, divisor);

	if (devpriv->use_dma)
		FUNC3(dev, s);
	else
		devpriv->mode |= APCI3120_MODE_EOS_IRQ_ENA;

	/* set mode to enable acquisition */
	FUNC7(devpriv->mode, dev->iobase + APCI3120_MODE_REG);

	if (cmd->scan_begin_src == TRIG_TIMER)
		FUNC4(dev, 1, true);
	FUNC4(dev, 0, true);

	return 0;
}