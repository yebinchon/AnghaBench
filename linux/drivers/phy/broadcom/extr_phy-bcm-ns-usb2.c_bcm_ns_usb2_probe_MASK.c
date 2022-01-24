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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct bcm_ns_usb2 {int /*<<< orphan*/  phy; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  dmu; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct bcm_ns_usb2* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bcm_ns_usb2*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct bcm_ns_usb2*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm_ns_usb2 *usb2;
	struct resource *res;
	struct phy_provider *phy_provider;

	usb2 = FUNC6(&pdev->dev, sizeof(*usb2), GFP_KERNEL);
	if (!usb2)
		return -ENOMEM;
	usb2->dev = dev;

	res = FUNC10(pdev, IORESOURCE_MEM, "dmu");
	usb2->dmu = FUNC5(dev, res);
	if (FUNC0(usb2->dmu)) {
		FUNC3(dev, "Failed to map DMU regs\n");
		return FUNC1(usb2->dmu);
	}

	usb2->ref_clk = FUNC4(dev, "phy-ref-clk");
	if (FUNC0(usb2->ref_clk)) {
		FUNC3(dev, "Clock not defined\n");
		return FUNC1(usb2->ref_clk);
	}

	usb2->phy = FUNC8(dev, NULL, &ops);
	if (FUNC0(usb2->phy))
		return FUNC1(usb2->phy);

	FUNC9(usb2->phy, usb2);
	FUNC11(pdev, usb2);

	phy_provider = FUNC7(dev, of_phy_simple_xlate);
	return FUNC2(phy_provider);
}