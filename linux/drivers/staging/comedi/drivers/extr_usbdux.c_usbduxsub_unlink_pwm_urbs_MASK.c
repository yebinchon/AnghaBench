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
struct usbdux_private {int /*<<< orphan*/  pwm_urb; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	struct usbdux_private *devpriv = dev->private;

	FUNC0(devpriv->pwm_urb);
}