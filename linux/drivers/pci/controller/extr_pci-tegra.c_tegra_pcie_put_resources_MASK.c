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
struct tegra_pcie_soc {scalar_t__ program_uphy; } ;
struct tegra_pcie {scalar_t__ irq; struct tegra_pcie_soc* soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct tegra_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie*) ; 

__attribute__((used)) static int FUNC2(struct tegra_pcie *pcie)
{
	const struct tegra_pcie_soc *soc = pcie->soc;

	if (pcie->irq > 0)
		FUNC0(pcie->irq, pcie);

	if (soc->program_uphy)
		FUNC1(pcie);

	return 0;
}