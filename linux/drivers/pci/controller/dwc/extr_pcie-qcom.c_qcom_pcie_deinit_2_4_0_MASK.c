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
struct qcom_pcie_resources_2_4_0 {int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; int /*<<< orphan*/  ahb_reset; int /*<<< orphan*/  pwr_reset; int /*<<< orphan*/  axi_m_sticky_reset; int /*<<< orphan*/  phy_ahb_reset; int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  pipe_sticky_reset; int /*<<< orphan*/  pipe_reset; int /*<<< orphan*/  axi_s_reset; int /*<<< orphan*/  axi_m_reset; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_4_0 v2_4_0; } ;
struct qcom_pcie {TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_4_0 *res = &pcie->res.v2_4_0;

	FUNC1(res->axi_m_reset);
	FUNC1(res->axi_s_reset);
	FUNC1(res->pipe_reset);
	FUNC1(res->pipe_sticky_reset);
	FUNC1(res->phy_reset);
	FUNC1(res->phy_ahb_reset);
	FUNC1(res->axi_m_sticky_reset);
	FUNC1(res->pwr_reset);
	FUNC1(res->ahb_reset);
	FUNC0(res->num_clks, res->clks);
}