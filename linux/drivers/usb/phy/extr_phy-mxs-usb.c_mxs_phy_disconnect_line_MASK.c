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
struct mxs_phy {int /*<<< orphan*/  regmap_anatop; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS ; 
 int /*<<< orphan*/  FUNC0 (struct mxs_phy*,int) ; 
 int FUNC1 (struct mxs_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxs_phy*) ; 

__attribute__((used)) static void FUNC3(struct mxs_phy *mxs_phy, bool on)
{
	bool vbus_is_on = false;

	/* If the SoCs don't need to disconnect line without vbus, quit */
	if (!(mxs_phy->data->flags & MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS))
		return;

	/* If the SoCs don't have anatop, quit */
	if (!mxs_phy->regmap_anatop)
		return;

	vbus_is_on = FUNC1(mxs_phy);

	if (on && !vbus_is_on && !FUNC2(mxs_phy))
		FUNC0(mxs_phy, true);
	else
		FUNC0(mxs_phy, false);

}