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
struct dwc3_meson_g12a {int otg_phy_mode; scalar_t__ vbus; int /*<<< orphan*/  dev; int /*<<< orphan*/ * phys; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;

/* Variables and functions */
 int EINVAL ; 
 int PHY_MODE_USB_DEVICE ; 
 int PHY_MODE_USB_HOST ; 
 size_t USB2_OTG_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_meson_g12a*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_meson_g12a*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct dwc3_meson_g12a *priv,
					enum phy_mode mode)
{
	int ret;

	if (!priv->phys[USB2_OTG_PHY])
		return -EINVAL;

	if (mode == PHY_MODE_USB_HOST)
		FUNC0(priv->dev, "switching to Host Mode\n");
	else
		FUNC0(priv->dev, "switching to Device Mode\n");

	if (priv->vbus) {
		if (mode == PHY_MODE_USB_DEVICE)
			ret = FUNC3(priv->vbus);
		else
			ret = FUNC4(priv->vbus);
		if (ret)
			return ret;
	}

	priv->otg_phy_mode = mode;

	FUNC1(priv, USB2_OTG_PHY, mode);

	FUNC2(priv);

	return 0;
}