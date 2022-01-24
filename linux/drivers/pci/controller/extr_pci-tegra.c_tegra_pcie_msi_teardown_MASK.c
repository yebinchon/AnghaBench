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
struct tegra_msi {scalar_t__ irq; int /*<<< orphan*/  domain; int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct tegra_pcie {int /*<<< orphan*/  dev; struct tegra_msi msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_NO_KERNEL_MAPPING ; 
 unsigned int INT_PCI_MSI_NR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct tegra_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct tegra_pcie *pcie)
{
	struct tegra_msi *msi = &pcie->msi;
	unsigned int i, irq;

	FUNC0(pcie->dev, PAGE_SIZE, msi->virt, msi->phys,
		       DMA_ATTR_NO_KERNEL_MAPPING);

	if (msi->irq > 0)
		FUNC1(msi->irq, pcie);

	for (i = 0; i < INT_PCI_MSI_NR; i++) {
		irq = FUNC4(msi->domain, i);
		if (irq > 0)
			FUNC2(irq);
	}

	FUNC3(msi->domain);
}