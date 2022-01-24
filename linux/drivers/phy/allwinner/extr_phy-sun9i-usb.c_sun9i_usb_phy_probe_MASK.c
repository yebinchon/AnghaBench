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
struct sun9i_usb_phy {scalar_t__ type; void* phy; void* pmu; void* reset; void* clk; void* hsic_clk; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct phy_provider*) ; 
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 struct sun9i_usb_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 scalar_t__ FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (void*,struct sun9i_usb_phy*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun9i_usb_phy_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct sun9i_usb_phy *phy;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct phy_provider *phy_provider;
	struct resource *res;

	phy = FUNC6(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	phy->type = FUNC10(np);
	if (phy->type == USBPHY_INTERFACE_MODE_HSIC) {
		phy->clk = FUNC4(dev, "hsic_480M");
		if (FUNC0(phy->clk)) {
			FUNC3(dev, "failed to get hsic_480M clock\n");
			return FUNC1(phy->clk);
		}

		phy->hsic_clk = FUNC4(dev, "hsic_12M");
		if (FUNC0(phy->hsic_clk)) {
			FUNC3(dev, "failed to get hsic_12M clock\n");
			return FUNC1(phy->hsic_clk);
		}

		phy->reset = FUNC9(dev, "hsic");
		if (FUNC0(phy->reset)) {
			FUNC3(dev, "failed to get reset control\n");
			return FUNC1(phy->reset);
		}
	} else {
		phy->clk = FUNC4(dev, "phy");
		if (FUNC0(phy->clk)) {
			FUNC3(dev, "failed to get phy clock\n");
			return FUNC1(phy->clk);
		}

		phy->reset = FUNC9(dev, "phy");
		if (FUNC0(phy->reset)) {
			FUNC3(dev, "failed to get reset control\n");
			return FUNC1(phy->reset);
		}
	}

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	phy->pmu = FUNC5(dev, res);
	if (FUNC0(phy->pmu))
		return FUNC1(phy->pmu);

	phy->phy = FUNC8(dev, NULL, &sun9i_usb_phy_ops);
	if (FUNC0(phy->phy)) {
		FUNC3(dev, "failed to create PHY\n");
		return FUNC1(phy->phy);
	}

	FUNC11(phy->phy, phy);
	phy_provider = FUNC7(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}