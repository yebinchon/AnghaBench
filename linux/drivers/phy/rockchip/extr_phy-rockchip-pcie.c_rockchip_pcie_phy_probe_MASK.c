#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rockchip_pcie_phy {TYPE_2__* phys; struct regmap* clk_pciephy_ref; struct regmap* phy_rst; int /*<<< orphan*/  pcie_mutex; struct regmap* reg_base; struct rockchip_pcie_data* phy_data; } ;
struct rockchip_pcie_data {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_4__ {int index; struct regmap* phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int PHY_MAX_LANE_NUM ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct regmap* FUNC5 (struct device*,char*) ; 
 struct rockchip_pcie_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC13 (struct regmap*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rockchip_pcie_phy*) ; 
 int /*<<< orphan*/  rockchip_pcie_phy_dt_ids ; 
 int /*<<< orphan*/  rockchip_pcie_phy_of_xlate ; 
 struct regmap* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rockchip_pcie_phy *rk_phy;
	struct phy_provider *phy_provider;
	struct regmap *grf;
	const struct of_device_id *of_id;
	int i;
	u32 phy_num;

	grf = FUNC15(dev->parent->of_node);
	if (FUNC0(grf)) {
		FUNC4(dev, "Cannot find GRF syscon\n");
		return FUNC1(grf);
	}

	rk_phy = FUNC6(dev, sizeof(*rk_phy), GFP_KERNEL);
	if (!rk_phy)
		return -ENOMEM;

	of_id = FUNC11(rockchip_pcie_phy_dt_ids, &pdev->dev);
	if (!of_id)
		return -EINVAL;

	rk_phy->phy_data = (struct rockchip_pcie_data *)of_id->data;
	rk_phy->reg_base = grf;

	FUNC10(&rk_phy->pcie_mutex);

	rk_phy->phy_rst = FUNC9(dev, "phy");
	if (FUNC0(rk_phy->phy_rst)) {
		if (FUNC1(rk_phy->phy_rst) != -EPROBE_DEFER)
			FUNC4(dev,
				"missing phy property for reset controller\n");
		return FUNC1(rk_phy->phy_rst);
	}

	rk_phy->clk_pciephy_ref = FUNC5(dev, "refclk");
	if (FUNC0(rk_phy->clk_pciephy_ref)) {
		FUNC4(dev, "refclk not found.\n");
		return FUNC1(rk_phy->clk_pciephy_ref);
	}

	/* parse #phy-cells to see if it's legacy PHY model */
	if (FUNC12(dev->of_node, "#phy-cells", &phy_num))
		return -ENOENT;

	phy_num = (phy_num == 0) ? 1 : PHY_MAX_LANE_NUM;
	FUNC3(dev, "phy number is %d\n", phy_num);

	for (i = 0; i < phy_num; i++) {
		rk_phy->phys[i].phy = FUNC8(dev, dev->of_node, &ops);
		if (FUNC0(rk_phy->phys[i].phy)) {
			FUNC4(dev, "failed to create PHY%d\n", i);
			return FUNC1(rk_phy->phys[i].phy);
		}
		rk_phy->phys[i].index = i;
		FUNC13(rk_phy->phys[i].phy, &rk_phy->phys[i]);
	}

	FUNC14(pdev, rk_phy);
	phy_provider = FUNC7(dev,
					rockchip_pcie_phy_of_xlate);

	return FUNC2(phy_provider);
}