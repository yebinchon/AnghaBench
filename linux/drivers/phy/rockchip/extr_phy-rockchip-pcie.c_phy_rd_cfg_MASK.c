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
typedef  int /*<<< orphan*/  u32 ;
struct rockchip_pcie_phy {TYPE_1__* phy_data; int /*<<< orphan*/  reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcie_status; int /*<<< orphan*/  pcie_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_CFG_ADDR_SHIFT ; 
 int /*<<< orphan*/  PHY_CFG_RD_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC3(struct rockchip_pcie_phy *rk_phy,
			     u32 addr)
{
	u32 val;

	FUNC2(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
		     FUNC0(addr,
				   PHY_CFG_RD_MASK,
				   PHY_CFG_ADDR_SHIFT));
	FUNC1(rk_phy->reg_base,
		    rk_phy->phy_data->pcie_status,
		    &val);
	return val;
}