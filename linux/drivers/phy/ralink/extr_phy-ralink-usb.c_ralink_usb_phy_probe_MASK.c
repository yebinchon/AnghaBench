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
struct resource {int dummy; } ;
struct ralink_usb_phy {uintptr_t clk; int /*<<< orphan*/ * phy; int /*<<< orphan*/ * rstdev; int /*<<< orphan*/ * rsthost; int /*<<< orphan*/ * base; int /*<<< orphan*/ * sysctl; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,struct resource*) ; 
 struct ralink_usb_phy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct device*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct ralink_usb_phy*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ralink_usb_phy_of_match ; 
 int /*<<< orphan*/  ralink_usb_phy_ops ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct phy_provider *phy_provider;
	const struct of_device_id *match;
	struct ralink_usb_phy *phy;

	match = FUNC10(ralink_usb_phy_of_match, &pdev->dev);
	if (!match)
		return -ENODEV;

	phy = FUNC5(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	phy->clk = (uintptr_t)match->data;
	phy->base = NULL;

	phy->sysctl = FUNC13(dev->of_node, "ralink,sysctl");
	if (FUNC0(phy->sysctl)) {
		FUNC3(dev, "failed to get sysctl registers\n");
		return FUNC1(phy->sysctl);
	}

	/* The MT7628 and MT7688 require extra setup of PHY registers. */
	if (FUNC9(dev->of_node, "mediatek,mt7628-usbphy")) {
		res = FUNC12(pdev, IORESOURCE_MEM, 0);
		phy->base = FUNC4(&pdev->dev, res);
		if (FUNC0(phy->base)) {
			FUNC3(dev, "failed to remap register memory\n");
			return FUNC1(phy->base);
		}
	}

	phy->rsthost = FUNC8(&pdev->dev, "host");
	if (FUNC0(phy->rsthost)) {
		FUNC3(dev, "host reset is missing\n");
		return FUNC1(phy->rsthost);
	}

	phy->rstdev = FUNC8(&pdev->dev, "device");
	if (FUNC0(phy->rstdev)) {
		FUNC3(dev, "device reset is missing\n");
		return FUNC1(phy->rstdev);
	}

	phy->phy = FUNC7(dev, NULL, &ralink_usb_phy_ops);
	if (FUNC0(phy->phy)) {
		FUNC3(dev, "failed to create PHY\n");
		return FUNC1(phy->phy);
	}
	FUNC11(phy->phy, phy);

	phy_provider = FUNC6(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}