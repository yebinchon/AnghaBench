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
struct qcom_pcie_resources_2_3_3 {int /*<<< orphan*/  aux_clk; int /*<<< orphan*/  ahb_clk; int /*<<< orphan*/  axi_s_clk; int /*<<< orphan*/  axi_m_clk; int /*<<< orphan*/  iface; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_3 v2_3_3; } ;
struct qcom_pcie {TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_3_3 *res = &pcie->res.v2_3_3;

	FUNC0(res->iface);
	FUNC0(res->axi_m_clk);
	FUNC0(res->axi_s_clk);
	FUNC0(res->ahb_clk);
	FUNC0(res->aux_clk);
}