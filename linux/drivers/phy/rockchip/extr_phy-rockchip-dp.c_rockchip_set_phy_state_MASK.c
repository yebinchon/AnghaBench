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
struct rockchip_dp_phy {int /*<<< orphan*/  grf; int /*<<< orphan*/  phy_24m; int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int GRF_EDP_PHY_SIDDQ_HIWORD_MASK ; 
 int GRF_EDP_PHY_SIDDQ_OFF ; 
 int GRF_EDP_PHY_SIDDQ_ON ; 
 int /*<<< orphan*/  GRF_SOC_CON12 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct rockchip_dp_phy* FUNC3 (struct phy*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct phy *phy, bool enable)
{
	struct rockchip_dp_phy *dp = FUNC3(phy);
	int ret;

	if (enable) {
		ret = FUNC4(dp->grf, GRF_SOC_CON12,
				   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
				   GRF_EDP_PHY_SIDDQ_ON);
		if (ret < 0) {
			FUNC2(dp->dev, "Can't enable PHY power %d\n", ret);
			return ret;
		}

		ret = FUNC1(dp->phy_24m);
	} else {
		FUNC0(dp->phy_24m);

		ret = FUNC4(dp->grf, GRF_SOC_CON12,
				   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
				   GRF_EDP_PHY_SIDDQ_OFF);
	}

	return ret;
}