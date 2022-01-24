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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int PCIE_PORT_MAX_MSI_ENTRIES ; 
 int PCIE_PORT_SERVICE_AER ; 
 size_t PCIE_PORT_SERVICE_AER_SHIFT ; 
 int PCIE_PORT_SERVICE_BWNOTIF ; 
 size_t PCIE_PORT_SERVICE_BWNOTIF_SHIFT ; 
 int PCIE_PORT_SERVICE_DPC ; 
 size_t PCIE_PORT_SERVICE_DPC_SHIFT ; 
 int PCIE_PORT_SERVICE_HP ; 
 size_t PCIE_PORT_SERVICE_HP_SHIFT ; 
 int PCIE_PORT_SERVICE_PME ; 
 size_t PCIE_PORT_SERVICE_PME_SHIFT ; 
 int PCI_IRQ_MSI ; 
 int PCI_IRQ_MSIX ; 
 int FUNC0 (struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, int *irqs, int mask)
{
	int nr_entries, nvec, pcie_irq;
	u32 pme = 0, aer = 0, dpc = 0;

	/* Allocate the maximum possible number of MSI/MSI-X vectors */
	nr_entries = FUNC0(dev, 1, PCIE_PORT_MAX_MSI_ENTRIES,
			PCI_IRQ_MSIX | PCI_IRQ_MSI);
	if (nr_entries < 0)
		return nr_entries;

	/* See how many and which Interrupt Message Numbers we actually use */
	nvec = FUNC3(dev, mask, &pme, &aer, &dpc);
	if (nvec > nr_entries) {
		FUNC1(dev);
		return -EIO;
	}

	/*
	 * If we allocated more than we need, free them and reallocate fewer.
	 *
	 * Reallocating may change the specific vectors we get, so
	 * pci_irq_vector() must be done *after* the reallocation.
	 *
	 * If we're using MSI, hardware is *allowed* to change the Interrupt
	 * Message Numbers when we free and reallocate the vectors, but we
	 * assume it won't because we allocate enough vectors for the
	 * biggest Message Number we found.
	 */
	if (nvec != nr_entries) {
		FUNC1(dev);

		nr_entries = FUNC0(dev, nvec, nvec,
				PCI_IRQ_MSIX | PCI_IRQ_MSI);
		if (nr_entries < 0)
			return nr_entries;
	}

	/* PME, hotplug and bandwidth notification share an MSI/MSI-X vector */
	if (mask & (PCIE_PORT_SERVICE_PME | PCIE_PORT_SERVICE_HP |
		    PCIE_PORT_SERVICE_BWNOTIF)) {
		pcie_irq = FUNC2(dev, pme);
		irqs[PCIE_PORT_SERVICE_PME_SHIFT] = pcie_irq;
		irqs[PCIE_PORT_SERVICE_HP_SHIFT] = pcie_irq;
		irqs[PCIE_PORT_SERVICE_BWNOTIF_SHIFT] = pcie_irq;
	}

	if (mask & PCIE_PORT_SERVICE_AER)
		irqs[PCIE_PORT_SERVICE_AER_SHIFT] = FUNC2(dev, aer);

	if (mask & PCIE_PORT_SERVICE_DPC)
		irqs[PCIE_PORT_SERVICE_DPC_SHIFT] = FUNC2(dev, dpc);

	return 0;
}