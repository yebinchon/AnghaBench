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
typedef  int u32 ;
struct rockchip_pcie_phy {int /*<<< orphan*/  pcie_mutex; int /*<<< orphan*/  pwr_cnt; int /*<<< orphan*/  phy_rst; TYPE_1__* phy_data; int /*<<< orphan*/  reg_base; } ;
struct phy_pcie_instance {scalar_t__ index; } ;
struct phy {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcie_status; int /*<<< orphan*/  pcie_conf; int /*<<< orphan*/  pcie_laneoff; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PHY_CFG_ADDR_MASK ; 
 scalar_t__ PHY_CFG_ADDR_SHIFT ; 
 int /*<<< orphan*/  PHY_CFG_CLK_SCC ; 
 int /*<<< orphan*/  PHY_CFG_CLK_TEST ; 
 int /*<<< orphan*/  PHY_CFG_PLL_100M ; 
 int PHY_CFG_PLL_LOCK ; 
 int /*<<< orphan*/  PHY_CFG_SEPE_RATE ; 
 scalar_t__ PHY_LANE_IDLE_A_SHIFT ; 
 int /*<<< orphan*/  PHY_LANE_IDLE_MASK ; 
 int /*<<< orphan*/  PHY_LANE_IDLE_OFF ; 
 int PHY_PLL_LOCKED ; 
 int PHY_PLL_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct phy_pcie_instance* FUNC7 (struct phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct rockchip_pcie_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 
 struct rockchip_pcie_phy* FUNC14 (struct phy_pcie_instance*) ; 

__attribute__((used)) static int FUNC15(struct phy *phy)
{
	struct phy_pcie_instance *inst = FUNC7(phy);
	struct rockchip_pcie_phy *rk_phy = FUNC14(inst);
	int err = 0;
	u32 status;
	unsigned long timeout;

	FUNC5(&rk_phy->pcie_mutex);

	if (rk_phy->pwr_cnt++)
		goto err_out;

	err = FUNC12(rk_phy->phy_rst);
	if (err) {
		FUNC2(&phy->dev, "deassert phy_rst err %d\n", err);
		goto err_pwr_cnt;
	}

	FUNC10(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
		     FUNC0(PHY_CFG_PLL_LOCK,
				   PHY_CFG_ADDR_MASK,
				   PHY_CFG_ADDR_SHIFT));

	FUNC10(rk_phy->reg_base,
		     rk_phy->phy_data->pcie_laneoff,
		     FUNC0(!PHY_LANE_IDLE_OFF,
				   PHY_LANE_IDLE_MASK,
				   PHY_LANE_IDLE_A_SHIFT + inst->index));

	/*
	 * No documented timeout value for phy operation below,
	 * so we make it large enough here. And we use loop-break
	 * method which should not be harmful.
	 */
	timeout = jiffies + FUNC3(1000);

	err = -EINVAL;
	while (FUNC13(jiffies, timeout)) {
		FUNC9(rk_phy->reg_base,
			    rk_phy->phy_data->pcie_status,
			    &status);
		if (status & PHY_PLL_LOCKED) {
			FUNC1(&phy->dev, "pll locked!\n");
			err = 0;
			break;
		}
		FUNC4(20);
	}

	if (err) {
		FUNC2(&phy->dev, "pll lock timeout!\n");
		goto err_pll_lock;
	}

	FUNC8(rk_phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
	FUNC8(rk_phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);

	err = -ETIMEDOUT;
	while (FUNC13(jiffies, timeout)) {
		FUNC9(rk_phy->reg_base,
			    rk_phy->phy_data->pcie_status,
			    &status);
		if (!(status & PHY_PLL_OUTPUT)) {
			FUNC1(&phy->dev, "pll output enable done!\n");
			err = 0;
			break;
		}
		FUNC4(20);
	}

	if (err) {
		FUNC2(&phy->dev, "pll output enable timeout!\n");
		goto err_pll_lock;
	}

	FUNC10(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
		     FUNC0(PHY_CFG_PLL_LOCK,
				   PHY_CFG_ADDR_MASK,
				   PHY_CFG_ADDR_SHIFT));
	err = -EINVAL;
	while (FUNC13(jiffies, timeout)) {
		FUNC9(rk_phy->reg_base,
			    rk_phy->phy_data->pcie_status,
			    &status);
		if (status & PHY_PLL_LOCKED) {
			FUNC1(&phy->dev, "pll relocked!\n");
			err = 0;
			break;
		}
		FUNC4(20);
	}

	if (err) {
		FUNC2(&phy->dev, "pll relock timeout!\n");
		goto err_pll_lock;
	}

err_out:
	FUNC6(&rk_phy->pcie_mutex);
	return 0;

err_pll_lock:
	FUNC11(rk_phy->phy_rst);
err_pwr_cnt:
	rk_phy->pwr_cnt--;
	FUNC6(&rk_phy->pcie_mutex);
	return err;
}