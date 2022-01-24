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
struct exynos_sata_phy {struct phy_provider* phyclk; struct phy_provider* phy; int /*<<< orphan*/  client; struct phy_provider* pmureg; struct phy_provider* regs; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_provider*) ; 
 int FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct exynos_sata_phy*) ; 
 struct phy_provider* FUNC6 (struct device*,char*) ; 
 struct phy_provider* FUNC7 (struct device*,struct resource*) ; 
 struct exynos_sata_phy* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exynos_sata_phy_ops ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC13 (struct phy_provider*,struct exynos_sata_phy*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct exynos_sata_phy *sata_phy;
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct phy_provider *phy_provider;
	struct device_node *node;
	int ret = 0;

	sata_phy = FUNC8(dev, sizeof(*sata_phy), GFP_KERNEL);
	if (!sata_phy)
		return -ENOMEM;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);

	sata_phy->regs = FUNC7(dev, res);
	if (FUNC0(sata_phy->regs))
		return FUNC1(sata_phy->regs);

	sata_phy->pmureg = FUNC15(dev->of_node,
					"samsung,syscon-phandle");
	if (FUNC0(sata_phy->pmureg)) {
		FUNC4(dev, "syscon regmap lookup failed.\n");
		return FUNC1(sata_phy->pmureg);
	}

	node = FUNC12(dev->of_node,
			"samsung,exynos-sataphy-i2c-phandle", 0);
	if (!node)
		return -EINVAL;

	sata_phy->client = FUNC11(node);
	if (!sata_phy->client)
		return -EPROBE_DEFER;

	FUNC5(dev, sata_phy);

	sata_phy->phyclk = FUNC6(dev, "sata_phyctrl");
	if (FUNC0(sata_phy->phyclk)) {
		FUNC4(dev, "failed to get clk for PHY\n");
		return FUNC1(sata_phy->phyclk);
	}

	ret = FUNC3(sata_phy->phyclk);
	if (ret < 0) {
		FUNC4(dev, "failed to enable source clk\n");
		return ret;
	}

	sata_phy->phy = FUNC10(dev, NULL, &exynos_sata_phy_ops);
	if (FUNC0(sata_phy->phy)) {
		FUNC2(sata_phy->phyclk);
		FUNC4(dev, "failed to create PHY\n");
		return FUNC1(sata_phy->phy);
	}

	FUNC13(sata_phy->phy, sata_phy);

	phy_provider = FUNC9(dev,
					of_phy_simple_xlate);
	if (FUNC0(phy_provider)) {
		FUNC2(sata_phy->phyclk);
		return FUNC1(phy_provider);
	}

	return 0;
}