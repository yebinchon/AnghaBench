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
typedef  int u32 ;
struct rockchip_pcie {int link_gen; int /*<<< orphan*/ * phys; int /*<<< orphan*/  pipe_rst; int /*<<< orphan*/  mgmt_rst; int /*<<< orphan*/  core_rst; int /*<<< orphan*/  mgmt_sticky_rst; scalar_t__ is_rc; int /*<<< orphan*/  lanes; int /*<<< orphan*/  pclk_rst; int /*<<< orphan*/  aclk_rst; int /*<<< orphan*/  pm_rst; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MAX_LANE_NUM ; 
 int PCIE_CLIENT_ARI_ENABLE ; 
 int /*<<< orphan*/  PCIE_CLIENT_CONFIG ; 
 int PCIE_CLIENT_CONF_DISABLE ; 
 int PCIE_CLIENT_CONF_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PCIE_CLIENT_GEN_SEL_1 ; 
 int PCIE_CLIENT_GEN_SEL_2 ; 
 int PCIE_CLIENT_LINK_TRAIN_ENABLE ; 
 int PCIE_CLIENT_MODE_EP ; 
 int PCIE_CLIENT_MODE_RC ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	int err, i;
	u32 regs;

	err = FUNC6(rockchip->aclk_rst);
	if (err) {
		FUNC1(dev, "assert aclk_rst err %d\n", err);
		return err;
	}

	err = FUNC6(rockchip->pclk_rst);
	if (err) {
		FUNC1(dev, "assert pclk_rst err %d\n", err);
		return err;
	}

	err = FUNC6(rockchip->pm_rst);
	if (err) {
		FUNC1(dev, "assert pm_rst err %d\n", err);
		return err;
	}

	for (i = 0; i < MAX_LANE_NUM; i++) {
		err = FUNC3(rockchip->phys[i]);
		if (err) {
			FUNC1(dev, "init phy%d err %d\n", i, err);
			goto err_exit_phy;
		}
	}

	err = FUNC6(rockchip->core_rst);
	if (err) {
		FUNC1(dev, "assert core_rst err %d\n", err);
		goto err_exit_phy;
	}

	err = FUNC6(rockchip->mgmt_rst);
	if (err) {
		FUNC1(dev, "assert mgmt_rst err %d\n", err);
		goto err_exit_phy;
	}

	err = FUNC6(rockchip->mgmt_sticky_rst);
	if (err) {
		FUNC1(dev, "assert mgmt_sticky_rst err %d\n", err);
		goto err_exit_phy;
	}

	err = FUNC6(rockchip->pipe_rst);
	if (err) {
		FUNC1(dev, "assert pipe_rst err %d\n", err);
		goto err_exit_phy;
	}

	FUNC9(10);

	err = FUNC7(rockchip->pm_rst);
	if (err) {
		FUNC1(dev, "deassert pm_rst err %d\n", err);
		goto err_exit_phy;
	}

	err = FUNC7(rockchip->aclk_rst);
	if (err) {
		FUNC1(dev, "deassert aclk_rst err %d\n", err);
		goto err_exit_phy;
	}

	err = FUNC7(rockchip->pclk_rst);
	if (err) {
		FUNC1(dev, "deassert pclk_rst err %d\n", err);
		goto err_exit_phy;
	}

	if (rockchip->link_gen == 2)
		FUNC8(rockchip, PCIE_CLIENT_GEN_SEL_2,
				    PCIE_CLIENT_CONFIG);
	else
		FUNC8(rockchip, PCIE_CLIENT_GEN_SEL_1,
				    PCIE_CLIENT_CONFIG);

	regs = PCIE_CLIENT_LINK_TRAIN_ENABLE | PCIE_CLIENT_ARI_ENABLE |
	       FUNC0(rockchip->lanes);

	if (rockchip->is_rc)
		regs |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
	else
		regs |= PCIE_CLIENT_CONF_DISABLE | PCIE_CLIENT_MODE_EP;

	FUNC8(rockchip, regs, PCIE_CLIENT_CONFIG);

	for (i = 0; i < MAX_LANE_NUM; i++) {
		err = FUNC5(rockchip->phys[i]);
		if (err) {
			FUNC1(dev, "power on phy%d err %d\n", i, err);
			goto err_power_off_phy;
		}
	}

	/*
	 * Please don't reorder the deassert sequence of the following
	 * four reset pins.
	 */
	err = FUNC7(rockchip->mgmt_sticky_rst);
	if (err) {
		FUNC1(dev, "deassert mgmt_sticky_rst err %d\n", err);
		goto err_power_off_phy;
	}

	err = FUNC7(rockchip->core_rst);
	if (err) {
		FUNC1(dev, "deassert core_rst err %d\n", err);
		goto err_power_off_phy;
	}

	err = FUNC7(rockchip->mgmt_rst);
	if (err) {
		FUNC1(dev, "deassert mgmt_rst err %d\n", err);
		goto err_power_off_phy;
	}

	err = FUNC7(rockchip->pipe_rst);
	if (err) {
		FUNC1(dev, "deassert pipe_rst err %d\n", err);
		goto err_power_off_phy;
	}

	return 0;
err_power_off_phy:
	while (i--)
		FUNC4(rockchip->phys[i]);
	i = MAX_LANE_NUM;
err_exit_phy:
	while (i--)
		FUNC2(rockchip->phys[i]);
	return err;
}