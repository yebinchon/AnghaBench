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
struct stih407_usb2_picophy {struct phy_provider* phy; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  param; struct phy_provider* regmap; struct phy_provider* rstport; struct phy_provider* rstc; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int /*<<< orphan*/  PHYCTRL_REG ; 
 int /*<<< orphan*/  PHYPARAM_REG ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct stih407_usb2_picophy*) ; 
 struct stih407_usb2_picophy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC8 (struct device*,char*) ; 
 struct phy_provider* FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_provider*,struct stih407_usb2_picophy*) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_provider*) ; 
 int /*<<< orphan*/  stih407_usb2_picophy_data ; 
 struct phy_provider* FUNC13 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct stih407_usb2_picophy *phy_dev;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct phy_provider *phy_provider;
	struct phy *phy;
	int ret;

	phy_dev = FUNC5(dev, sizeof(*phy_dev), GFP_KERNEL);
	if (!phy_dev)
		return -ENOMEM;

	phy_dev->dev = dev;
	FUNC4(dev, phy_dev);

	phy_dev->rstc = FUNC9(dev, "global");
	if (FUNC0(phy_dev->rstc)) {
		FUNC2(dev, "failed to ctrl picoPHY reset\n");
		return FUNC1(phy_dev->rstc);
	}

	phy_dev->rstport = FUNC8(dev, "port");
	if (FUNC0(phy_dev->rstport)) {
		FUNC2(dev, "failed to ctrl picoPHY reset\n");
		return FUNC1(phy_dev->rstport);
	}

	/* Reset port by default: only deassert it in phy init */
	FUNC12(phy_dev->rstport);

	phy_dev->regmap = FUNC13(np, "st,syscfg");
	if (FUNC0(phy_dev->regmap)) {
		FUNC2(dev, "No syscfg phandle specified\n");
		return FUNC1(phy_dev->regmap);
	}

	ret = FUNC10(np, "st,syscfg", PHYPARAM_REG,
					&phy_dev->param);
	if (ret) {
		FUNC2(dev, "can't get phyparam offset (%d)\n", ret);
		return ret;
	}

	ret = FUNC10(np, "st,syscfg", PHYCTRL_REG,
					&phy_dev->ctrl);
	if (ret) {
		FUNC2(dev, "can't get phyctrl offset (%d)\n", ret);
		return ret;
	}

	phy = FUNC7(dev, NULL, &stih407_usb2_picophy_data);
	if (FUNC0(phy)) {
		FUNC2(dev, "failed to create Display Port PHY\n");
		return FUNC1(phy);
	}

	phy_dev->phy = phy;
	FUNC11(phy, phy_dev);

	phy_provider = FUNC6(dev, of_phy_simple_xlate);
	if (FUNC0(phy_provider))
		return FUNC1(phy_provider);

	FUNC3(dev, "STiH407 USB Generic picoPHY driver probed!");

	return 0;
}