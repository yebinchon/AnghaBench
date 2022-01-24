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
struct device {struct device_node* of_node; struct da8xx_usb_phy_platform_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct da8xx_usb_phy_platform_data {void* cfgchip; } ;
struct da8xx_usb_phy {void* regmap; void* usb20_phy; void* usb11_phy; void* phy_provider; void* usb20_clk; void* usb11_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  PHY_INIT_BITS ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  da8xx_usb11_phy_ops ; 
 int /*<<< orphan*/  da8xx_usb20_phy_ops ; 
 int /*<<< orphan*/  da8xx_usb_phy_of_xlate ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 struct da8xx_usb_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC9 (void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct da8xx_usb_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct da8xx_usb_phy*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device		*dev = &pdev->dev;
	struct da8xx_usb_phy_platform_data *pdata = dev->platform_data;
	struct device_node	*node = dev->of_node;
	struct da8xx_usb_phy	*d_phy;

	d_phy = FUNC6(dev, sizeof(*d_phy), GFP_KERNEL);
	if (!d_phy)
		return -ENOMEM;

	if (pdata)
		d_phy->regmap = pdata->cfgchip;
	else
		d_phy->regmap = FUNC13(
							"ti,da830-cfgchip");
	if (FUNC1(d_phy->regmap)) {
		FUNC3(dev, "Failed to get syscon\n");
		return FUNC2(d_phy->regmap);
	}

	d_phy->usb11_clk = FUNC5(dev, "usb1_clk48");
	if (FUNC1(d_phy->usb11_clk)) {
		FUNC3(dev, "Failed to get usb1_clk48\n");
		return FUNC2(d_phy->usb11_clk);
	}

	d_phy->usb20_clk = FUNC5(dev, "usb0_clk48");
	if (FUNC1(d_phy->usb20_clk)) {
		FUNC3(dev, "Failed to get usb0_clk48\n");
		return FUNC2(d_phy->usb20_clk);
	}

	d_phy->usb11_phy = FUNC8(dev, node, &da8xx_usb11_phy_ops);
	if (FUNC1(d_phy->usb11_phy)) {
		FUNC3(dev, "Failed to create usb11 phy\n");
		return FUNC2(d_phy->usb11_phy);
	}

	d_phy->usb20_phy = FUNC8(dev, node, &da8xx_usb20_phy_ops);
	if (FUNC1(d_phy->usb20_phy)) {
		FUNC3(dev, "Failed to create usb20 phy\n");
		return FUNC2(d_phy->usb20_phy);
	}

	FUNC11(pdev, d_phy);
	FUNC10(d_phy->usb11_phy, d_phy);
	FUNC10(d_phy->usb20_phy, d_phy);

	if (node) {
		d_phy->phy_provider = FUNC7(dev,
							da8xx_usb_phy_of_xlate);
		if (FUNC1(d_phy->phy_provider)) {
			FUNC3(dev, "Failed to create phy provider\n");
			return FUNC2(d_phy->phy_provider);
		}
	} else {
		int ret;

		ret = FUNC9(d_phy->usb11_phy, "usb-phy",
					"ohci-da8xx");
		if (ret)
			FUNC4(dev, "Failed to create usb11 phy lookup\n");
		ret = FUNC9(d_phy->usb20_phy, "usb-phy",
					"musb-da8xx");
		if (ret)
			FUNC4(dev, "Failed to create usb20 phy lookup\n");
	}

	FUNC12(d_phy->regmap, FUNC0(2),
			  PHY_INIT_BITS, PHY_INIT_BITS);

	return 0;
}