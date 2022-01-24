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
struct pci_host_bridge {scalar_t__ native_pme; scalar_t__ native_aer; scalar_t__ native_pcie_hotplug; } ;
struct pci_dev {scalar_t__ aer_cap; scalar_t__ is_hotplug_bridge; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int PCIE_PORT_SERVICE_AER ; 
 int PCIE_PORT_SERVICE_BWNOTIF ; 
 int PCIE_PORT_SERVICE_DPC ; 
 int PCIE_PORT_SERVICE_HP ; 
 int PCIE_PORT_SERVICE_PME ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int PCI_EXP_SLTCTL_CCIE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DPC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_host_bridge* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 scalar_t__ pcie_ports_native ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev)
{
	struct pci_host_bridge *host = FUNC3(dev->bus);
	int services = 0;

	if (dev->is_hotplug_bridge &&
	    (pcie_ports_native || host->native_pcie_hotplug)) {
		services |= PCIE_PORT_SERVICE_HP;

		/*
		 * Disable hot-plug interrupts in case they have been enabled
		 * by the BIOS and the hot-plug service driver is not loaded.
		 */
		FUNC5(dev, PCI_EXP_SLTCTL,
			  PCI_EXP_SLTCTL_CCIE | PCI_EXP_SLTCTL_HPIE);
	}

#ifdef CONFIG_PCIEAER
	if (dev->aer_cap && pci_aer_available() &&
	    (pcie_ports_native || host->native_aer)) {
		services |= PCIE_PORT_SERVICE_AER;

		/*
		 * Disable AER on this port in case it's been enabled by the
		 * BIOS (the AER service driver will enable it when necessary).
		 */
		pci_disable_pcie_error_reporting(dev);
	}
#endif

	/*
	 * Root ports are capable of generating PME too.  Root Complex
	 * Event Collectors can also generate PMEs, but we don't handle
	 * those yet.
	 */
	if (FUNC4(dev) == PCI_EXP_TYPE_ROOT_PORT &&
	    (pcie_ports_native || host->native_pme)) {
		services |= PCIE_PORT_SERVICE_PME;

		/*
		 * Disable PME interrupt on this port in case it's been enabled
		 * by the BIOS (the PME service driver will enable it when
		 * necessary).
		 */
		FUNC6(dev, false);
	}

	if (FUNC2(dev, PCI_EXT_CAP_ID_DPC) &&
	    FUNC0() && services & PCIE_PORT_SERVICE_AER)
		services |= PCIE_PORT_SERVICE_DPC;

	if (FUNC4(dev) == PCI_EXP_TYPE_DOWNSTREAM ||
	    FUNC4(dev) == PCI_EXP_TYPE_ROOT_PORT)
		services |= PCIE_PORT_SERVICE_BWNOTIF;

	return services;
}