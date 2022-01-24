#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  msi_irq; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {TYPE_1__ pp; } ;
struct tegra_pcie_dw {TYPE_2__ pci; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  link_state; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra_pcie_dw* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static void FUNC7(struct platform_device *pdev)
{
	struct tegra_pcie_dw *pcie = FUNC4(pdev);

	if (!pcie->link_state)
		return;

	FUNC2(pcie->debugfs);
	FUNC5(pcie);

	FUNC3(pcie->pci.pp.irq);
	if (FUNC0(CONFIG_PCI_MSI))
		FUNC3(pcie->pci.pp.msi_irq);

	FUNC6(pcie);
	FUNC1(pcie);
}