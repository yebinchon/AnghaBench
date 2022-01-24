#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct rockchip_emmc_phy {unsigned int reg_offset; int /*<<< orphan*/  drive_impedance; struct regmap* reg_base; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct regmap phy ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  PHYCTRL_DR_50OHM ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct rockchip_emmc_phy* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,struct rockchip_emmc_phy*) ; 
 struct regmap* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rockchip_emmc_phy *rk_phy;
	struct phy *generic_phy;
	struct phy_provider *phy_provider;
	struct regmap *grf;
	unsigned int reg_offset;
	u32 val;

	if (!dev->parent || !dev->parent->of_node)
		return -ENODEV;

	grf = FUNC10(dev->parent->of_node);
	if (FUNC0(grf)) {
		FUNC4(dev, "Missing rockchip,grf property\n");
		return FUNC1(grf);
	}

	rk_phy = FUNC5(dev, sizeof(*rk_phy), GFP_KERNEL);
	if (!rk_phy)
		return -ENOMEM;

	if (FUNC8(dev->of_node, "reg", &reg_offset)) {
		FUNC4(dev, "missing reg property in node %pOFn\n",
			dev->of_node);
		return -EINVAL;
	}

	rk_phy->reg_offset = reg_offset;
	rk_phy->reg_base = grf;
	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;

	if (!FUNC8(dev->of_node, "drive-impedance-ohm", &val))
		rk_phy->drive_impedance = FUNC3(pdev, val);

	generic_phy = FUNC7(dev, dev->of_node, &ops);
	if (FUNC0(generic_phy)) {
		FUNC4(dev, "failed to create PHY\n");
		return FUNC1(generic_phy);
	}

	FUNC9(generic_phy, rk_phy);
	phy_provider = FUNC6(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}