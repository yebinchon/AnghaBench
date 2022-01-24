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
struct usbduxfast_private {int ai_cmd_running; int /*<<< orphan*/  mut; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct usbduxfast_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 unsigned int trig_num)
{
	struct usbduxfast_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	FUNC1(&devpriv->mut);

	if (!devpriv->ai_cmd_running) {
		devpriv->ai_cmd_running = 1;
		ret = FUNC3(dev);
		if (ret < 0) {
			FUNC0(dev->class_dev, "urbSubmit: err=%d\n", ret);
			devpriv->ai_cmd_running = 0;
			FUNC2(&devpriv->mut);
			return ret;
		}
		s->async->inttrig = NULL;
	} else {
		FUNC0(dev->class_dev, "ai is already running\n");
	}
	FUNC2(&devpriv->mut);
	return 1;
}