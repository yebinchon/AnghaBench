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
struct ufs_mtk_phy {struct device* dev; struct phy* mmio; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 struct phy* FUNC3 (struct device*,struct resource*) ; 
 struct ufs_mtk_phy* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC7 (struct phy*,struct ufs_mtk_phy*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ufs_mtk_phy*) ; 
 int /*<<< orphan*/  ufs_mtk_phy_ops ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct resource *res;
	struct ufs_mtk_phy *phy;
	int ret;

	phy = FUNC4(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	phy->mmio = FUNC3(dev, res);
	if (FUNC0(phy->mmio))
		return FUNC1(phy->mmio);

	phy->dev = dev;

	ret = FUNC9(phy);
	if (ret)
		return ret;

	generic_phy = FUNC6(dev, NULL, &ufs_mtk_phy_ops);
	if (FUNC0(generic_phy))
		return FUNC1(generic_phy);

	FUNC7(generic_phy, phy);

	phy_provider = FUNC5(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}