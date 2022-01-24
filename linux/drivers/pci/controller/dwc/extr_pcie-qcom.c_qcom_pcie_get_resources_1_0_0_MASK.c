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
struct qcom_pcie_resources_1_0_0 {int /*<<< orphan*/  core; void* slave_bus; void* master_bus; void* aux; void* iface; void* vdda; } ;
struct TYPE_2__ {struct qcom_pcie_resources_1_0_0 v1_0_0; } ;
struct qcom_pcie {struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_1_0_0 *res = &pcie->res.v1_0_0;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;

	res->vdda = FUNC4(dev, "vdda");
	if (FUNC0(res->vdda))
		return FUNC1(res->vdda);

	res->iface = FUNC3(dev, "iface");
	if (FUNC0(res->iface))
		return FUNC1(res->iface);

	res->aux = FUNC3(dev, "aux");
	if (FUNC0(res->aux))
		return FUNC1(res->aux);

	res->master_bus = FUNC3(dev, "master_bus");
	if (FUNC0(res->master_bus))
		return FUNC1(res->master_bus);

	res->slave_bus = FUNC3(dev, "slave_bus");
	if (FUNC0(res->slave_bus))
		return FUNC1(res->slave_bus);

	res->core = FUNC5(dev, "core");
	return FUNC2(res->core);
}