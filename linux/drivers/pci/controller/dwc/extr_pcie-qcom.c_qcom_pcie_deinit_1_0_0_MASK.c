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
struct qcom_pcie_resources_1_0_0 {int /*<<< orphan*/  vdda; int /*<<< orphan*/  aux; int /*<<< orphan*/  iface; int /*<<< orphan*/  master_bus; int /*<<< orphan*/  slave_bus; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {struct qcom_pcie_resources_1_0_0 v1_0_0; } ;
struct qcom_pcie {TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_1_0_0 *res = &pcie->res.v1_0_0;

	FUNC2(res->core);
	FUNC0(res->slave_bus);
	FUNC0(res->master_bus);
	FUNC0(res->iface);
	FUNC0(res->aux);
	FUNC1(res->vdda);
}