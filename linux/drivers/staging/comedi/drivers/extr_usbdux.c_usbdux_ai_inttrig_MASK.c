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
struct usbdux_private {int ai_cmd_running; int /*<<< orphan*/  mut; int /*<<< orphan*/  n_ai_urbs; int /*<<< orphan*/  ai_urbs; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     unsigned int trig_num)
{
	struct usbdux_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	FUNC0(&devpriv->mut);

	if (!devpriv->ai_cmd_running) {
		devpriv->ai_cmd_running = 1;
		ret = FUNC2(dev, devpriv->ai_urbs,
					 devpriv->n_ai_urbs, 1);
		if (ret < 0) {
			devpriv->ai_cmd_running = 0;
			goto ai_trig_exit;
		}
		s->async->inttrig = NULL;
	} else {
		ret = -EBUSY;
	}

ai_trig_exit:
	FUNC1(&devpriv->mut);
	return ret;
}