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
struct pci_bus {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_SCAN_ALL_PCIE_DEVS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus)
{
	struct pci_dev *bridge = bus->self;

	/*
	 * Systems with unusual topologies set PCI_SCAN_ALL_PCIE_DEVS so
	 * we scan for all possible devices, not just Device 0.
	 */
	if (FUNC0(PCI_SCAN_ALL_PCIE_DEVS))
		return 0;

	/*
	 * A PCIe Downstream Port normally leads to a Link with only Device
	 * 0 on it (PCIe spec r3.1, sec 7.3.1).  As an optimization, scan
	 * only for Device 0 in that situation.
	 */
	if (bridge && FUNC1(bridge) && FUNC2(bridge))
		return 1;

	return 0;
}