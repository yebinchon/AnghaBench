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
struct rockchip_pcie_phy {int /*<<< orphan*/  pcie_mutex; int /*<<< orphan*/  clk_pciephy_ref; scalar_t__ init_cnt; } ;
struct phy_pcie_instance {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct phy_pcie_instance* FUNC3 (struct phy*) ; 
 struct rockchip_pcie_phy* FUNC4 (struct phy_pcie_instance*) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct phy_pcie_instance *inst = FUNC3(phy);
	struct rockchip_pcie_phy *rk_phy = FUNC4(inst);

	FUNC1(&rk_phy->pcie_mutex);

	if (--rk_phy->init_cnt)
		goto err_init_cnt;

	FUNC0(rk_phy->clk_pciephy_ref);

err_init_cnt:
	FUNC2(&rk_phy->pcie_mutex);
	return 0;
}