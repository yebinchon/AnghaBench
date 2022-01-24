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
struct rockchip_dp_phy {struct device* dev; struct phy* grf; struct phy* phy_24m; } ;
struct device {TYPE_1__* parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GRF_EDP_REF_CLK_SEL_INTER ; 
 int GRF_EDP_REF_CLK_SEL_INTER_HIWORD_MASK ; 
 int /*<<< orphan*/  GRF_SOC_CON12 ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int FUNC3 (struct phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct phy* FUNC5 (struct device*,char*) ; 
 struct rockchip_dp_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy* FUNC8 (struct device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC9 (struct phy*,struct rockchip_dp_phy*) ; 
 int FUNC10 (struct phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rockchip_dp_phy_ops ; 
 struct phy* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct phy_provider *phy_provider;
	struct rockchip_dp_phy *dp;
	struct phy *phy;
	int ret;

	if (!np)
		return -ENODEV;

	if (!dev->parent || !dev->parent->of_node)
		return -ENODEV;

	dp = FUNC6(dev, sizeof(*dp), GFP_KERNEL);
	if (!dp)
		return -ENOMEM;

	dp->dev = dev;

	dp->phy_24m = FUNC5(dev, "24m");
	if (FUNC0(dp->phy_24m)) {
		FUNC4(dev, "cannot get clock 24m\n");
		return FUNC1(dp->phy_24m);
	}

	ret = FUNC3(dp->phy_24m, 24000000);
	if (ret < 0) {
		FUNC4(dp->dev, "cannot set clock phy_24m %d\n", ret);
		return ret;
	}

	dp->grf = FUNC11(dev->parent->of_node);
	if (FUNC0(dp->grf)) {
		FUNC4(dev, "rk3288-dp needs the General Register Files syscon\n");
		return FUNC1(dp->grf);
	}

	ret = FUNC10(dp->grf, GRF_SOC_CON12, GRF_EDP_REF_CLK_SEL_INTER |
			   GRF_EDP_REF_CLK_SEL_INTER_HIWORD_MASK);
	if (ret != 0) {
		FUNC4(dp->dev, "Could not config GRF edp ref clk: %d\n", ret);
		return ret;
	}

	phy = FUNC8(dev, np, &rockchip_dp_phy_ops);
	if (FUNC0(phy)) {
		FUNC4(dev, "failed to create phy\n");
		return FUNC1(phy);
	}
	FUNC9(phy, dp);

	phy_provider = FUNC7(dev, of_phy_simple_xlate);

	return FUNC2(phy_provider);
}