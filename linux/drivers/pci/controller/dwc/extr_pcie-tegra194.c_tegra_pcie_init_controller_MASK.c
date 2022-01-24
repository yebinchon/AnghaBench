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
struct pcie_port {int /*<<< orphan*/ * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct tegra_pcie_dw {int /*<<< orphan*/  dev; struct dw_pcie pci; } ;

/* Variables and functions */
 int FUNC0 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct pcie_port*) ; 
 int FUNC3 (struct tegra_pcie_dw*,int) ; 
 int /*<<< orphan*/  tegra_pcie_dw_host_ops ; 

__attribute__((used)) static int FUNC4(struct tegra_pcie_dw *pcie)
{
	struct dw_pcie *pci = &pcie->pci;
	struct pcie_port *pp = &pci->pp;
	int ret;

	ret = FUNC3(pcie, false);
	if (ret < 0)
		return ret;

	pp->ops = &tegra_pcie_dw_host_ops;

	ret = FUNC2(pp);
	if (ret < 0) {
		FUNC1(pcie->dev, "Failed to add PCIe port: %d\n", ret);
		goto fail_host_init;
	}

	return 0;

fail_host_init:
	return FUNC0(pcie);
}