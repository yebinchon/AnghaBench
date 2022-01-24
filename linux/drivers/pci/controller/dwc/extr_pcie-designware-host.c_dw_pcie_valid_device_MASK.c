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
struct pcie_port {scalar_t__ root_bus_nr; } ;
struct pci_bus {scalar_t__ number; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC1 (struct pcie_port*) ; 

__attribute__((used)) static int FUNC2(struct pcie_port *pp, struct pci_bus *bus,
				int dev)
{
	struct dw_pcie *pci = FUNC1(pp);

	/* If there is no link, then there is no device */
	if (bus->number != pp->root_bus_nr) {
		if (!FUNC0(pci))
			return 0;
	}

	/* Access only one slot on each root port */
	if (bus->number == pp->root_bus_nr && dev > 0)
		return 0;

	return 1;
}