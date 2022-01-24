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
struct pcie_port {scalar_t__ root_bus_nr; } ;
struct pci_bus {scalar_t__ number; struct pcie_port* sysdata; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*,struct pci_bus*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcie_port*,struct pci_bus*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcie_port*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, u32 devfn,
			   int where, int size, u32 val)
{
	struct pcie_port *pp = bus->sysdata;

	if (!FUNC1(pp, bus, FUNC0(devfn)))
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (bus->number == pp->root_bus_nr)
		return FUNC3(pp, where, size, val);

	return FUNC2(pp, bus, devfn, where, size, val);
}