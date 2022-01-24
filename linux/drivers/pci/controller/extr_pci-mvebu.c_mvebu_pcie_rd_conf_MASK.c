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
struct pci_bus {scalar_t__ number; struct mvebu_pcie* sysdata; } ;
struct mvebu_pcie_port {int /*<<< orphan*/  bridge; } ;
struct mvebu_pcie {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 struct mvebu_pcie_port* FUNC0 (struct mvebu_pcie*,struct pci_bus*,int) ; 
 int FUNC1 (struct mvebu_pcie_port*,struct pci_bus*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvebu_pcie_port*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, u32 devfn, int where,
			      int size, u32 *val)
{
	struct mvebu_pcie *pcie = bus->sysdata;
	struct mvebu_pcie_port *port;
	int ret;

	port = FUNC0(pcie, bus, devfn);
	if (!port) {
		*val = 0xffffffff;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	/* Access the emulated PCI-to-PCI bridge */
	if (bus->number == 0)
		return FUNC3(&port->bridge, where,
						 size, val);

	if (!FUNC2(port)) {
		*val = 0xffffffff;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	/* Access the real PCIe interface */
	ret = FUNC1(port, bus, devfn,
				    where, size, val);

	return ret;
}