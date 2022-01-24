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
typedef  int u32 ;
struct intel_xhci_usb_data {scalar_t__ base; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 scalar_t__ DUAL_ROLE_CFG0 ; 
 int SW_IDPIN ; 
 int SW_VBUS_VALID ; 
 int USB_ROLE_DEVICE ; 
 int USB_ROLE_HOST ; 
 int USB_ROLE_NONE ; 
 struct intel_xhci_usb_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static enum usb_role FUNC4(struct device *dev)
{
	struct intel_xhci_usb_data *data = FUNC0(dev);
	enum usb_role role;
	u32 val;

	FUNC1(dev);
	val = FUNC3(data->base + DUAL_ROLE_CFG0);
	FUNC2(dev);

	if (!(val & SW_IDPIN))
		role = USB_ROLE_HOST;
	else if (val & SW_VBUS_VALID)
		role = USB_ROLE_DEVICE;
	else
		role = USB_ROLE_NONE;

	return role;
}