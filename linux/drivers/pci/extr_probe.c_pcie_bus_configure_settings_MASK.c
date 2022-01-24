#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct pci_bus {TYPE_1__* self; } ;
struct TYPE_5__ {scalar_t__ pcie_mpss; } ;

/* Variables and functions */
 scalar_t__ PCIE_BUS_PEER2PEER ; 
 scalar_t__ PCIE_BUS_SAFE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,int /*<<< orphan*/  (*) (TYPE_1__*,scalar_t__*),scalar_t__*) ; 
 scalar_t__ pcie_bus_config ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*) ; 

void FUNC4(struct pci_bus *bus)
{
	u8 smpss = 0;

	if (!bus->self)
		return;

	if (!FUNC0(bus->self))
		return;

	/*
	 * FIXME - Peer to peer DMA is possible, though the endpoint would need
	 * to be aware of the MPS of the destination.  To work around this,
	 * simply force the MPS of the entire system to the smallest possible.
	 */
	if (pcie_bus_config == PCIE_BUS_PEER2PEER)
		smpss = 0;

	if (pcie_bus_config == PCIE_BUS_SAFE) {
		smpss = bus->self->pcie_mpss;

		FUNC3(bus->self, &smpss);
		FUNC1(bus, pcie_find_smpss, &smpss);
	}

	FUNC2(bus->self, &smpss);
	FUNC1(bus, pcie_bus_configure_set, &smpss);
}