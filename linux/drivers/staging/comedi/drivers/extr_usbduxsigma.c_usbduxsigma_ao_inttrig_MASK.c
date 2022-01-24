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
struct usbduxsigma_private {int ao_cmd_running; int /*<<< orphan*/  mut; int /*<<< orphan*/  n_ao_urbs; int /*<<< orphan*/  ao_urbs; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  unsigned int trig_num)
{
	struct usbduxsigma_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	FUNC0(&devpriv->mut);
	if (!devpriv->ao_cmd_running) {
		devpriv->ao_cmd_running = 1;
		ret = FUNC2(dev, devpriv->ao_urbs,
					      devpriv->n_ao_urbs, 0);
		if (ret < 0) {
			devpriv->ao_cmd_running = 0;
			FUNC1(&devpriv->mut);
			return ret;
		}
		s->async->inttrig = NULL;
	}
	FUNC1(&devpriv->mut);

	return 1;
}