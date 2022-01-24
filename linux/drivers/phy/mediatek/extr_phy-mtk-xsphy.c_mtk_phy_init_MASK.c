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
struct xsphy_instance {int type; int /*<<< orphan*/  ref_clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_xsphy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PHY_TYPE_USB2 129 
#define  PHY_TYPE_USB3 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mtk_xsphy* FUNC3 (int /*<<< orphan*/ ) ; 
 struct xsphy_instance* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_xsphy*,struct xsphy_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_xsphy*,struct xsphy_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_xsphy*,struct xsphy_instance*) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct xsphy_instance *inst = FUNC4(phy);
	struct mtk_xsphy *xsphy = FUNC3(phy->dev.parent);
	int ret;

	ret = FUNC1(inst->ref_clk);
	if (ret) {
		FUNC2(xsphy->dev, "failed to enable ref_clk\n");
		return ret;
	}

	switch (inst->type) {
	case PHY_TYPE_USB2:
		FUNC5(xsphy, inst);
		FUNC6(xsphy, inst);
		break;
	case PHY_TYPE_USB3:
		FUNC7(xsphy, inst);
		break;
	default:
		FUNC2(xsphy->dev, "incompatible phy type\n");
		FUNC0(inst->ref_clk);
		return -EINVAL;
	}

	return 0;
}