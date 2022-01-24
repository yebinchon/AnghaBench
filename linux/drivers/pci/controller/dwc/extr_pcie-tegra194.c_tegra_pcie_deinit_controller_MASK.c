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
struct TYPE_2__ {int /*<<< orphan*/  pp; } ;
struct tegra_pcie_dw {TYPE_1__ pci; } ;

/* Variables and functions */
 int FUNC0 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC4(struct tegra_pcie_dw *pcie)
{
	FUNC2(pcie);
	FUNC1(&pcie->pci.pp);
	FUNC3(pcie);

	return FUNC0(pcie);
}