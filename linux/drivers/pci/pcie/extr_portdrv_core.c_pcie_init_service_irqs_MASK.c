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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int PCIE_PORT_DEVICE_MAXSERVICES ; 
 int PCIE_PORT_SERVICE_PME ; 
 int /*<<< orphan*/  PCI_IRQ_LEGACY ; 
 int FUNC0 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct pci_dev*,int*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, int *irqs, int mask)
{
	int ret, i;

	for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
		irqs[i] = -1;

	/*
	 * If we support PME but can't use MSI/MSI-X for it, we have to
	 * fall back to INTx or other interrupts, e.g., a system shared
	 * interrupt.
	 */
	if ((mask & PCIE_PORT_SERVICE_PME) && FUNC2())
		goto legacy_irq;

	/* Try to use MSI-X or MSI if supported */
	if (FUNC3(dev, irqs, mask) == 0)
		return 0;

legacy_irq:
	/* fall back to legacy IRQ */
	ret = FUNC0(dev, 1, 1, PCI_IRQ_LEGACY);
	if (ret < 0)
		return -ENODEV;

	for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
		irqs[i] = FUNC1(dev, 0);

	return 0;
}