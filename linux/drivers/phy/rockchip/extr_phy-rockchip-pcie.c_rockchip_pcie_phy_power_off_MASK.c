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
struct rockchip_pcie_phy {int /*<<< orphan*/  pcie_mutex; TYPE_1__* phy_data; int /*<<< orphan*/  reg_base; scalar_t__ pwr_cnt; int /*<<< orphan*/  phy_rst; } ;
struct phy_pcie_instance {scalar_t__ index; } ;
struct phy {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcie_laneoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PHY_LANE_IDLE_A_SHIFT ; 
 int /*<<< orphan*/  PHY_LANE_IDLE_MASK ; 
 int PHY_LANE_IDLE_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct phy_pcie_instance* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct rockchip_pcie_phy* FUNC7 (struct phy_pcie_instance*) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct phy_pcie_instance *inst = FUNC4(phy);
	struct rockchip_pcie_phy *rk_phy = FUNC7(inst);
	int err = 0;

	FUNC2(&rk_phy->pcie_mutex);

	FUNC5(rk_phy->reg_base,
		     rk_phy->phy_data->pcie_laneoff,
		     FUNC0(PHY_LANE_IDLE_OFF,
				   PHY_LANE_IDLE_MASK,
				   PHY_LANE_IDLE_A_SHIFT + inst->index));

	if (--rk_phy->pwr_cnt)
		goto err_out;

	err = FUNC6(rk_phy->phy_rst);
	if (err) {
		FUNC1(&phy->dev, "assert phy_rst err %d\n", err);
		goto err_restore;
	}

err_out:
	FUNC3(&rk_phy->pcie_mutex);
	return 0;

err_restore:
	rk_phy->pwr_cnt++;
	FUNC5(rk_phy->reg_base,
		     rk_phy->phy_data->pcie_laneoff,
		     FUNC0(!PHY_LANE_IDLE_OFF,
				   PHY_LANE_IDLE_MASK,
				   PHY_LANE_IDLE_A_SHIFT + inst->index));
	FUNC3(&rk_phy->pcie_mutex);
	return err;
}