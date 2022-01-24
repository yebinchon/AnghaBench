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
struct phy {int dummy; } ;
struct mvebu_comphy_lane {int mode; int submode; int /*<<< orphan*/  port; int /*<<< orphan*/  id; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;

/* Variables and functions */
 int EINVAL ; 
 int PHY_INTERFACE_MODE_1000BASEX ; 
 int PHY_INTERFACE_MODE_SGMII ; 
 int PHY_MODE_PCIE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct mvebu_comphy_lane* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy,
				 enum phy_mode mode, int submode)
{
	struct mvebu_comphy_lane *lane = FUNC1(phy);

	if (submode == PHY_INTERFACE_MODE_1000BASEX)
		submode = PHY_INTERFACE_MODE_SGMII;

	if (FUNC0(lane->id, lane->port, mode, submode) < 0)
		return -EINVAL;

	lane->mode = mode;
	lane->submode = submode;

	/* PCIe submode represents the width */
	if (mode == PHY_MODE_PCIE && !lane->submode)
		lane->submode = 1;

	return 0;
}