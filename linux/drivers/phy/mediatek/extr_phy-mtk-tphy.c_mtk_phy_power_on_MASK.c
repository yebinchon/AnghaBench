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
struct mtk_tphy {int dummy; } ;
struct mtk_phy_instance {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ PHY_TYPE_PCIE ; 
 scalar_t__ PHY_TYPE_USB2 ; 
 struct mtk_tphy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 struct mtk_phy_instance* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_tphy*,struct mtk_phy_instance*) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct mtk_phy_instance *instance = FUNC3(phy);
	struct mtk_tphy *tphy = FUNC0(phy->dev.parent);

	if (instance->type == PHY_TYPE_USB2) {
		FUNC4(tphy, instance);
		FUNC1(tphy, instance);
	} else if (instance->type == PHY_TYPE_PCIE) {
		FUNC2(tphy, instance);
	}

	return 0;
}