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
struct usbduxsigma_private {int /*<<< orphan*/  pwm_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBDUXSIGMA_PWM_OFF_CMD ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s)
{
	struct usbduxsigma_private *devpriv = dev->private;

	/* unlink only if it is really running */
	FUNC1(dev, devpriv->pwm_cmd_running);

	return FUNC0(dev, USBDUXSIGMA_PWM_OFF_CMD);
}