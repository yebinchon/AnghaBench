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
struct rockchip_pcie_phy {int /*<<< orphan*/  pcie_mutex; int /*<<< orphan*/  init_cnt; int /*<<< orphan*/  clk_pciephy_ref; int /*<<< orphan*/  phy_rst; } ;
struct phy_pcie_instance {int dummy; } ;
struct phy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct phy_pcie_instance* FUNC5 (struct phy*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct rockchip_pcie_phy* FUNC7 (struct phy_pcie_instance*) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct phy_pcie_instance *inst = FUNC5(phy);
	struct rockchip_pcie_phy *rk_phy = FUNC7(inst);
	int err = 0;

	FUNC3(&rk_phy->pcie_mutex);

	if (rk_phy->init_cnt++)
		goto err_out;

	err = FUNC1(rk_phy->clk_pciephy_ref);
	if (err) {
		FUNC2(&phy->dev, "Fail to enable pcie ref clock.\n");
		goto err_refclk;
	}

	err = FUNC6(rk_phy->phy_rst);
	if (err) {
		FUNC2(&phy->dev, "assert phy_rst err %d\n", err);
		goto err_reset;
	}

err_out:
	FUNC4(&rk_phy->pcie_mutex);
	return 0;

err_reset:

	FUNC0(rk_phy->clk_pciephy_ref);
err_refclk:
	rk_phy->init_cnt--;
	FUNC4(&rk_phy->pcie_mutex);
	return err;
}