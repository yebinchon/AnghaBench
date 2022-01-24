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
typedef  void* u8 ;
struct usbduxsigma_private {unsigned int ai_interval; int ai_timer; int* dux_commands; int ai_counter; int ai_cmd_running; int /*<<< orphan*/  mut; int /*<<< orphan*/  n_ai_urbs; int /*<<< orphan*/  ai_urbs; scalar_t__ high_speed; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_arg; scalar_t__ start_src; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRIG_NOW ; 
 int /*<<< orphan*/  USBBUXSIGMA_AD_CMD ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * usbduxsigma_ai_inttrig ; 
 unsigned int FUNC5 (unsigned int) ; 
 int FUNC6 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	struct usbduxsigma_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int len = cmd->chanlist_len;
	u8 muxsg0 = 0;
	u8 muxsg1 = 0;
	u8 sysred = 0;
	int ret;
	int i;

	FUNC2(&devpriv->mut);

	if (devpriv->high_speed) {
		/*
		 * every 2 channels get a time window of 125us. Thus, if we
		 * sample all 16 channels we need 1ms. If we sample only one
		 * channel we need only 125us
		 */
		unsigned int interval = FUNC5(len);

		devpriv->ai_interval = interval;
		devpriv->ai_timer = cmd->scan_begin_arg / (125000 * interval);
	} else {
		/* interval always 1ms */
		devpriv->ai_interval = 1;
		devpriv->ai_timer = cmd->scan_begin_arg / 1000000;
	}

	for (i = 0; i < len; i++) {
		unsigned int chan  = FUNC0(cmd->chanlist[i]);

		FUNC1(chan, &muxsg0, &muxsg1);
	}

	devpriv->dux_commands[1] = devpriv->ai_interval;
	devpriv->dux_commands[2] = len;  /* num channels per time step */
	devpriv->dux_commands[3] = 0x12; /* CONFIG0 */
	devpriv->dux_commands[4] = 0x03; /* CONFIG1: 23kHz sample, delay 0us */
	devpriv->dux_commands[5] = 0x00; /* CONFIG3: diff. channels off */
	devpriv->dux_commands[6] = muxsg0;
	devpriv->dux_commands[7] = muxsg1;
	devpriv->dux_commands[8] = sysred;

	ret = FUNC4(dev, USBBUXSIGMA_AD_CMD);
	if (ret < 0) {
		FUNC3(&devpriv->mut);
		return ret;
	}

	devpriv->ai_counter = devpriv->ai_timer;

	if (cmd->start_src == TRIG_NOW) {
		/* enable this acquisition operation */
		devpriv->ai_cmd_running = 1;
		ret = FUNC6(dev, devpriv->ai_urbs,
					      devpriv->n_ai_urbs, 1);
		if (ret < 0) {
			devpriv->ai_cmd_running = 0;
			FUNC3(&devpriv->mut);
			return ret;
		}
		s->async->inttrig = NULL;
	} else {	/* TRIG_INT */
		s->async->inttrig = usbduxsigma_ai_inttrig;
	}

	FUNC3(&devpriv->mut);

	return 0;
}