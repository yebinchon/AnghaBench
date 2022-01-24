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
struct mtk_tphy {int /*<<< orphan*/  u3phya_ref; } ;
struct mtk_phy_instance {scalar_t__ type; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 scalar_t__ PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_tphy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk_phy_instance* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_tphy*,struct mtk_phy_instance*) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct mtk_phy_instance *instance = FUNC2(phy);
	struct mtk_tphy *tphy = FUNC1(phy->dev.parent);

	if (instance->type == PHY_TYPE_USB2)
		FUNC3(tphy, instance);

	FUNC0(instance->ref_clk);
	FUNC0(tphy->u3phya_ref);
	return 0;
}