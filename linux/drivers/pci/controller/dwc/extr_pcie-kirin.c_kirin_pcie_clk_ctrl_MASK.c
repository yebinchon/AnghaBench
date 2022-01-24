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
struct kirin_pcie {int /*<<< orphan*/  phy_ref_clk; int /*<<< orphan*/  apb_sys_clk; int /*<<< orphan*/  apb_phy_clk; int /*<<< orphan*/  pcie_aclk; int /*<<< orphan*/  pcie_aux_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_CLK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kirin_pcie *kirin_pcie, bool enable)
{
	int ret = 0;

	if (!enable)
		goto close_clk;

	ret = FUNC2(kirin_pcie->phy_ref_clk, REF_CLK_FREQ);
	if (ret)
		return ret;

	ret = FUNC1(kirin_pcie->phy_ref_clk);
	if (ret)
		return ret;

	ret = FUNC1(kirin_pcie->apb_sys_clk);
	if (ret)
		goto apb_sys_fail;

	ret = FUNC1(kirin_pcie->apb_phy_clk);
	if (ret)
		goto apb_phy_fail;

	ret = FUNC1(kirin_pcie->pcie_aclk);
	if (ret)
		goto aclk_fail;

	ret = FUNC1(kirin_pcie->pcie_aux_clk);
	if (ret)
		goto aux_clk_fail;

	return 0;

close_clk:
	FUNC0(kirin_pcie->pcie_aux_clk);
aux_clk_fail:
	FUNC0(kirin_pcie->pcie_aclk);
aclk_fail:
	FUNC0(kirin_pcie->apb_phy_clk);
apb_phy_fail:
	FUNC0(kirin_pcie->apb_sys_clk);
apb_sys_fail:
	FUNC0(kirin_pcie->phy_ref_clk);

	return ret;
}