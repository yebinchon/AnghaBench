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
struct mvebu_comphy_priv {int /*<<< orphan*/  cp_phys; } ;
struct mvebu_comphy_lane {int /*<<< orphan*/  id; struct mvebu_comphy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPHY_SIP_POWER_OFF ; 
 int FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvebu_comphy_lane* FUNC2 (struct phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct mvebu_comphy_lane *lane = FUNC2(phy);
	struct mvebu_comphy_priv *priv = lane->priv;
	int ret;

	ret = FUNC1(COMPHY_SIP_POWER_OFF, priv->cp_phys,
			       lane->id, 0);
	if (!ret)
		return ret;

	/* Fallback to Linux's implementation */
	return FUNC0(phy);
}