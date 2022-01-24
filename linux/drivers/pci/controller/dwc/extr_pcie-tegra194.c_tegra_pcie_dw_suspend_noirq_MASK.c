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
struct tegra_pcie_dw {int /*<<< orphan*/  pci; int /*<<< orphan*/  msi_ctrl_int; int /*<<< orphan*/  link_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_LOGIC_MSI_CTRL_INT_0_EN ; 
 int FUNC0 (struct tegra_pcie_dw*) ; 
 struct tegra_pcie_dw* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct tegra_pcie_dw *pcie = FUNC1(dev);

	if (!pcie->link_state)
		return 0;

	/* Save MSI interrupt vector */
	pcie->msi_ctrl_int = FUNC2(&pcie->pci,
					       PORT_LOGIC_MSI_CTRL_INT_0_EN);
	FUNC3(pcie);
	FUNC4(pcie);

	return FUNC0(pcie);
}