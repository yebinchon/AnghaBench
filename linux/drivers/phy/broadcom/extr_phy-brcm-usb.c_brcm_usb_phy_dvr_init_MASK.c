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
struct phy {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct brcm_usb_phy_data {struct phy* usb_30_clk; TYPE_1__* phys; scalar_t__ has_xhci; scalar_t__ has_eohci; struct phy* usb_20_clk; } ;
struct TYPE_2__ {size_t id; struct phy* phy; } ;

/* Variables and functions */
 size_t BRCM_USB_PHY_2_0 ; 
 size_t BRCM_USB_PHY_3_0 ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  brcm_usb_phy_ops ; 
 int FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct phy* FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
				 struct brcm_usb_phy_data *priv,
				 struct device_node *dn)
{
	struct phy *gphy;
	int err;

	priv->usb_20_clk = FUNC6(dn, "sw_usb");
	if (FUNC0(priv->usb_20_clk)) {
		FUNC4(dev, "Clock not found in Device Tree\n");
		priv->usb_20_clk = NULL;
	}
	err = FUNC2(priv->usb_20_clk);
	if (err)
		return err;

	if (priv->has_eohci) {
		gphy = FUNC5(dev, NULL, &brcm_usb_phy_ops);
		if (FUNC0(gphy)) {
			FUNC3(dev, "failed to create EHCI/OHCI PHY\n");
			return FUNC1(gphy);
		}
		priv->phys[BRCM_USB_PHY_2_0].phy = gphy;
		priv->phys[BRCM_USB_PHY_2_0].id = BRCM_USB_PHY_2_0;
		FUNC7(gphy, &priv->phys[BRCM_USB_PHY_2_0]);
	}

	if (priv->has_xhci) {
		gphy = FUNC5(dev, NULL, &brcm_usb_phy_ops);
		if (FUNC0(gphy)) {
			FUNC3(dev, "failed to create XHCI PHY\n");
			return FUNC1(gphy);
		}
		priv->phys[BRCM_USB_PHY_3_0].phy = gphy;
		priv->phys[BRCM_USB_PHY_3_0].id = BRCM_USB_PHY_3_0;
		FUNC7(gphy, &priv->phys[BRCM_USB_PHY_3_0]);

		priv->usb_30_clk = FUNC6(dn, "sw_usb3");
		if (FUNC0(priv->usb_30_clk)) {
			FUNC4(dev,
				 "USB3.0 clock not found in Device Tree\n");
			priv->usb_30_clk = NULL;
		}
		err = FUNC2(priv->usb_30_clk);
		if (err)
			return err;
	}
	return 0;
}