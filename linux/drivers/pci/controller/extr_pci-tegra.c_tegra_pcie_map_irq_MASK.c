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
typedef  int /*<<< orphan*/  u8 ;
struct tegra_pcie {int irq; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct tegra_pcie* sysdata; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(const struct pci_dev *pdev, u8 slot, u8 pin)
{
	struct tegra_pcie *pcie = pdev->bus->sysdata;
	int irq;

	FUNC1();

	irq = FUNC0(pdev, slot, pin);
	if (!irq)
		irq = pcie->irq;

	return irq;
}