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
typedef  int u32 ;
struct pci_host_bridge {int native_pcie_hotplug; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HOTPLUG_PCI_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_EXP_SLTCAP ; 
 int PCI_EXP_SLTCAP_HPC ; 
 struct pci_host_bridge* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ pcie_ports_native ; 

bool FUNC3(struct pci_dev *bridge)
{
	const struct pci_host_bridge *host;
	u32 slot_cap;

	if (!FUNC0(CONFIG_HOTPLUG_PCI_PCIE))
		return false;

	FUNC2(bridge, PCI_EXP_SLTCAP, &slot_cap);
	if (!(slot_cap & PCI_EXP_SLTCAP_HPC))
		return false;

	if (pcie_ports_native)
		return true;

	host = FUNC1(bridge->bus);
	return host->native_pcie_hotplug;
}