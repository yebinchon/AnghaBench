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
struct qcom_pcie_resources_2_3_2 {int /*<<< orphan*/  supplies; int /*<<< orphan*/  aux_clk; int /*<<< orphan*/  cfg_clk; int /*<<< orphan*/  master_clk; int /*<<< orphan*/  slave_clk; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_2 v2_3_2; } ;
struct qcom_pcie {TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_2_3_2 *res = &pcie->res.v2_3_2;

	FUNC1(res->slave_clk);
	FUNC1(res->master_clk);
	FUNC1(res->cfg_clk);
	FUNC1(res->aux_clk);

	FUNC2(FUNC0(res->supplies), res->supplies);
}