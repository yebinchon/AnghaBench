#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ehci_hcd {int /*<<< orphan*/  hcs_params; scalar_t__ priv; } ;
struct ehci_ci_priv {scalar_t__ reg_vbus; } ;
struct device {int dummy; } ;
struct ci_hdrc {TYPE_2__* platdata; } ;
struct TYPE_4__ {scalar_t__ phy_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int) ; 
 struct ci_hdrc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct ehci_hcd* FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ci_hdrc*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, int portnum, bool enable)
{
	struct ehci_hcd *ehci = FUNC4(hcd);
	struct ehci_ci_priv *priv = (struct ehci_ci_priv *)ehci->priv;
	struct device *dev = hcd->self.controller;
	struct ci_hdrc *ci = FUNC2(dev);
	int ret = 0;
	int port = FUNC0(ehci->hcs_params);

	if (priv->reg_vbus) {
		if (port > 1) {
			FUNC3(dev,
				"Not support multi-port regulator control\n");
			return 0;
		}
		if (enable)
			ret = FUNC7(priv->reg_vbus);
		else
			ret = FUNC6(priv->reg_vbus);
		if (ret) {
			FUNC1(dev,
				"Failed to %s vbus regulator, ret=%d\n",
				enable ? "enable" : "disable", ret);
			return ret;
		}
	}

	if (enable && (ci->platdata->phy_mode == USBPHY_INTERFACE_MODE_HSIC)) {
		/*
		 * Marvell 28nm HSIC PHY requires forcing the port to HS mode.
		 * As HSIC is always HS, this should be safe for others.
		 */
		FUNC5(ci, 5);
		FUNC5(ci, 0);
	}
	return 0;
}