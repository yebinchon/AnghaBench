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
struct renesas_usb3 {int dummy; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int USB_ROLE_DEVICE ; 
 int USB_ROLE_HOST ; 
 struct renesas_usb3* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct renesas_usb3*) ; 

__attribute__((used)) static enum usb_role FUNC4(struct device *dev)
{
	struct renesas_usb3 *usb3 = FUNC0(dev);
	enum usb_role cur_role;

	FUNC1(dev);
	cur_role = FUNC3(usb3) ? USB_ROLE_HOST : USB_ROLE_DEVICE;
	FUNC2(dev);

	return cur_role;
}