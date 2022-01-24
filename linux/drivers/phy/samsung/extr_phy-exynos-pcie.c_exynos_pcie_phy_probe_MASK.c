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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct exynos_pcie_phy_data {int /*<<< orphan*/  ops; } ;
struct exynos_pcie_phy {struct exynos_pcie_phy_data const* drv_data; struct phy* blk_base; struct phy* phy_base; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 struct exynos_pcie_phy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct exynos_pcie_phy_data* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC9 (struct phy*,struct exynos_pcie_phy*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct exynos_pcie_phy *exynos_phy;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct resource *res;
	const struct exynos_pcie_phy_data *drv_data;

	drv_data = FUNC8(dev);
	if (!drv_data)
		return -ENODEV;

	exynos_phy = FUNC5(dev, sizeof(*exynos_phy), GFP_KERNEL);
	if (!exynos_phy)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	exynos_phy->phy_base = FUNC4(dev, res);
	if (FUNC0(exynos_phy->phy_base))
		return FUNC1(exynos_phy->phy_base);

	res = FUNC10(pdev, IORESOURCE_MEM, 1);
	exynos_phy->blk_base = FUNC4(dev, res);
	if (FUNC0(exynos_phy->blk_base))
		return FUNC1(exynos_phy->blk_base);

	exynos_phy->drv_data = drv_data;

	generic_phy = FUNC7(dev, dev->of_node, drv_data->ops);
	if (FUNC0(generic_phy)) {
		FUNC3(dev, "failed to create PHY\n");
		return FUNC1(generic_phy);
	}

	FUNC9(generic_phy, exynos_phy);
	phy_provider = FUNC6(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}