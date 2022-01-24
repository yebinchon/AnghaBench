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
struct dwc3_meson_g12a {int otg_phy_mode; } ;
struct device {int dummy; } ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;

/* Variables and functions */
 int PHY_MODE_USB_DEVICE ; 
 int PHY_MODE_USB_HOST ; 
 int USB_ROLE_HOST ; 
 int USB_ROLE_NONE ; 
 struct dwc3_meson_g12a* FUNC0 (struct device*) ; 
 int FUNC1 (struct dwc3_meson_g12a*,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, enum usb_role role)
{
	struct dwc3_meson_g12a *priv = FUNC0(dev);
	enum phy_mode mode;

	if (role == USB_ROLE_NONE)
		return 0;

	mode = (role == USB_ROLE_HOST) ? PHY_MODE_USB_HOST
				       : PHY_MODE_USB_DEVICE;

	if (mode == priv->otg_phy_mode)
		return 0;

	return FUNC1(priv, mode);
}