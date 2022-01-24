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
struct usbdux_private {int pwm_cmd_running; int /*<<< orphan*/  mut; int /*<<< orphan*/  pwm_buf_sz; TYPE_1__* pwm_urb; int /*<<< orphan*/  pwm_delay; int /*<<< orphan*/ * dux_commands; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBDUX_CMD_PWM_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct usbdux_private *devpriv = dev->private;
	int ret = 0;

	FUNC1(&devpriv->mut);

	if (devpriv->pwm_cmd_running)
		goto pwm_start_exit;

	devpriv->dux_commands[1] = devpriv->pwm_delay;
	ret = FUNC3(dev, USBDUX_CMD_PWM_ON);
	if (ret < 0)
		goto pwm_start_exit;

	/* initialise the buffer */
	FUNC0(devpriv->pwm_urb->transfer_buffer, 0, devpriv->pwm_buf_sz);

	devpriv->pwm_cmd_running = 1;
	ret = FUNC4(dev);
	if (ret < 0)
		devpriv->pwm_cmd_running = 0;

pwm_start_exit:
	FUNC2(&devpriv->mut);

	return ret;
}