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
struct xsphy_instance {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mtk_xsphy {int dummy; } ;

/* Variables and functions */
 scalar_t__ PHY_TYPE_USB2 ; 
 struct mtk_xsphy* FUNC0 (int /*<<< orphan*/ ) ; 
 struct xsphy_instance* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_xsphy*,struct xsphy_instance*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct xsphy_instance *inst = FUNC1(phy);
	struct mtk_xsphy *xsphy = FUNC0(phy->dev.parent);

	if (inst->type == PHY_TYPE_USB2)
		FUNC2(xsphy, inst);

	return 0;
}