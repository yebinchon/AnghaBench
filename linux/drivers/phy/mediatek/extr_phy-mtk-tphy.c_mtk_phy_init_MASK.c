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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_tphy {int /*<<< orphan*/  dev; int /*<<< orphan*/  u3phya_ref; } ;
struct mtk_phy_instance {int type; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PHY_TYPE_PCIE 131 
#define  PHY_TYPE_SATA 130 
#define  PHY_TYPE_USB2 129 
#define  PHY_TYPE_USB3 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mtk_tphy* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 struct mtk_phy_instance* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_tphy*,struct mtk_phy_instance*) ; 

__attribute__((used)) static int FUNC9(struct phy *phy)
{
	struct mtk_phy_instance *instance = FUNC4(phy);
	struct mtk_tphy *tphy = FUNC2(phy->dev.parent);
	int ret;

	ret = FUNC0(tphy->u3phya_ref);
	if (ret) {
		FUNC1(tphy->dev, "failed to enable u3phya_ref\n");
		return ret;
	}

	ret = FUNC0(instance->ref_clk);
	if (ret) {
		FUNC1(tphy->dev, "failed to enable ref_clk\n");
		return ret;
	}

	switch (instance->type) {
	case PHY_TYPE_USB2:
		FUNC6(tphy, instance);
		FUNC7(tphy, instance);
		break;
	case PHY_TYPE_USB3:
		FUNC8(tphy, instance);
		break;
	case PHY_TYPE_PCIE:
		FUNC3(tphy, instance);
		break;
	case PHY_TYPE_SATA:
		FUNC5(tphy, instance);
		break;
	default:
		FUNC1(tphy->dev, "incompatible PHY type\n");
		return -EINVAL;
	}

	return 0;
}