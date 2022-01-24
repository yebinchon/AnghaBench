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
struct qcom_pcie_resources_1_0_0 {int /*<<< orphan*/  core; int /*<<< orphan*/  aux; int /*<<< orphan*/  iface; int /*<<< orphan*/  master_bus; int /*<<< orphan*/  slave_bus; int /*<<< orphan*/  vdda; } ;
struct TYPE_2__ {struct qcom_pcie_resources_1_0_0 v1_0_0; } ;
struct qcom_pcie {scalar_t__ parf; struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT ; 
 scalar_t__ PCIE20_PARF_DBI_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct qcom_pcie *pcie)
{
	struct qcom_pcie_resources_1_0_0 *res = &pcie->res.v1_0_0;
	struct dw_pcie *pci = pcie->pci;
	struct device *dev = pci->dev;
	int ret;

	ret = FUNC8(res->core);
	if (ret) {
		FUNC4(dev, "cannot deassert core reset\n");
		return ret;
	}

	ret = FUNC3(res->aux);
	if (ret) {
		FUNC4(dev, "cannot prepare/enable aux clock\n");
		goto err_res;
	}

	ret = FUNC3(res->iface);
	if (ret) {
		FUNC4(dev, "cannot prepare/enable iface clock\n");
		goto err_aux;
	}

	ret = FUNC3(res->master_bus);
	if (ret) {
		FUNC4(dev, "cannot prepare/enable master_bus clock\n");
		goto err_iface;
	}

	ret = FUNC3(res->slave_bus);
	if (ret) {
		FUNC4(dev, "cannot prepare/enable slave_bus clock\n");
		goto err_master;
	}

	ret = FUNC6(res->vdda);
	if (ret) {
		FUNC4(dev, "cannot enable vdda regulator\n");
		goto err_slave;
	}

	/* change DBI base address */
	FUNC9(0, pcie->parf + PCIE20_PARF_DBI_BASE_ADDR);

	if (FUNC1(CONFIG_PCI_MSI)) {
		u32 val = FUNC5(pcie->parf + PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT);

		val |= FUNC0(31);
		FUNC9(val, pcie->parf + PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT);
	}

	return 0;
err_slave:
	FUNC2(res->slave_bus);
err_master:
	FUNC2(res->master_bus);
err_iface:
	FUNC2(res->iface);
err_aux:
	FUNC2(res->aux);
err_res:
	FUNC7(res->core);

	return ret;
}