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
struct phy {int dummy; } ;
struct bcm_kona_usb {struct phy* regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 struct phy* FUNC3 (struct device*,struct resource*) ; 
 struct bcm_kona_usb* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC7 (struct phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct phy*,struct bcm_kona_usb*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct bcm_kona_usb*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm_kona_usb *phy;
	struct resource *res;
	struct phy *gphy;
	struct phy_provider *phy_provider;

	phy = FUNC4(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	phy->regs = FUNC3(&pdev->dev, res);
	if (FUNC0(phy->regs))
		return FUNC1(phy->regs);

	FUNC10(pdev, phy);

	gphy = FUNC6(dev, NULL, &ops);
	if (FUNC0(gphy))
		return FUNC1(gphy);

	/* The Kona PHY supports an 8-bit wide UTMI interface */
	FUNC7(gphy, 8);

	FUNC8(gphy, phy);

	phy_provider = FUNC5(dev,
			of_phy_simple_xlate);

	return FUNC2(phy_provider);
}