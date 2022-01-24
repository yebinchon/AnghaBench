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
typedef  int /*<<< orphan*/  u32 ;
struct cdns3_device {TYPE_1__* regs; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int /*<<< orphan*/  usb_sts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int USB_SPEED_FULL ; 
 int USB_SPEED_HIGH ; 
 int USB_SPEED_LOW ; 
 int USB_SPEED_SUPER ; 
 int USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

enum usb_device_speed FUNC5(struct cdns3_device *priv_dev)
{
	u32 reg;

	reg = FUNC4(&priv_dev->regs->usb_sts);

	if (FUNC3(reg))
		return USB_SPEED_SUPER;
	else if (FUNC1(reg))
		return USB_SPEED_HIGH;
	else if (FUNC0(reg))
		return USB_SPEED_FULL;
	else if (FUNC2(reg))
		return USB_SPEED_LOW;
	return USB_SPEED_UNKNOWN;
}