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
typedef  int /*<<< orphan*/  u32 ;
struct rockchip_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_CORE_TXCREDIT_CFG1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCIE_CORE_TXCREDIT_CFG1_MUI_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rockchip_pcie *rockchip)
{
	u32 val;

	/* Update Tx credit maximum update interval */
	val = FUNC1(rockchip, PCIE_CORE_TXCREDIT_CFG1);
	val &= ~PCIE_CORE_TXCREDIT_CFG1_MUI_MASK;
	val |= FUNC0(24000);	/* ns */
	FUNC2(rockchip, val, PCIE_CORE_TXCREDIT_CFG1);
}