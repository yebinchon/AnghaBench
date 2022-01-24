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
struct tegra_p2u {struct phy_provider* base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 struct phy_provider* FUNC2 (struct device*,struct resource*) ; 
 struct tegra_p2u* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC6 (struct phy_provider*,struct tegra_p2u*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct tegra_p2u*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct device *dev = &pdev->dev;
	struct phy *generic_phy;
	struct tegra_p2u *phy;
	struct resource *res;

	phy = FUNC3(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	res = FUNC7(pdev, IORESOURCE_MEM, "ctl");
	phy->base = FUNC2(dev, res);
	if (FUNC0(phy->base))
		return FUNC1(phy->base);

	FUNC8(pdev, phy);

	generic_phy = FUNC5(dev, NULL, &ops);
	if (FUNC0(generic_phy))
		return FUNC1(generic_phy);

	FUNC6(generic_phy, phy);

	phy_provider = FUNC4(dev, of_phy_simple_xlate);
	if (FUNC0(phy_provider))
		return FUNC1(phy_provider);

	return 0;
}