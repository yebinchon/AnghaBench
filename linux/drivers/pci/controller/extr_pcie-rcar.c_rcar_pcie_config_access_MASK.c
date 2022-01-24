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
typedef  int u32 ;
struct rcar_pcie {int root_bus_nr; } ;
struct pci_bus {TYPE_1__* parent; int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int CONFIG_SEND_ENABLE ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  PCIECAR ; 
 int /*<<< orphan*/  PCIECCTLR ; 
 int /*<<< orphan*/  PCIECDR ; 
 int /*<<< orphan*/  PCIEERRFR ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int PCI_PRIMARY_BUS ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int PCI_STATUS_REC_TARGET_ABORT ; 
 unsigned char RCAR_PCI_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int TYPE0 ; 
 int TYPE1 ; 
 int UNSUPPORTED_REQUEST ; 
 scalar_t__ FUNC7 (struct pci_bus*) ; 
 int FUNC8 (struct rcar_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rcar_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct rcar_pcie *pcie,
		unsigned char access_type, struct pci_bus *bus,
		unsigned int devfn, int where, u32 *data)
{
	unsigned int dev, func, reg, index;

	dev = FUNC5(devfn);
	func = FUNC4(devfn);
	reg = where & ~3;
	index = reg / 4;

	/*
	 * While each channel has its own memory-mapped extended config
	 * space, it's generally only accessible when in endpoint mode.
	 * When in root complex mode, the controller is unable to target
	 * itself with either type 0 or type 1 accesses, and indeed, any
	 * controller initiated target transfer to its own config space
	 * result in a completer abort.
	 *
	 * Each channel effectively only supports a single device, but as
	 * the same channel <-> device access works for any PCI_SLOT()
	 * value, we cheat a bit here and bind the controller's config
	 * space to devfn 0 in order to enable self-enumeration. In this
	 * case the regular ECAR/ECDR path is sidelined and the mangled
	 * config access itself is initiated as an internal bus transaction.
	 */
	if (FUNC7(bus)) {
		if (dev != 0)
			return PCIBIOS_DEVICE_NOT_FOUND;

		if (access_type == RCAR_PCI_ACCESS_READ) {
			*data = FUNC8(pcie, FUNC0(index));
		} else {
			/* Keep an eye out for changes to the root bus number */
			if (FUNC7(bus) && (reg == PCI_PRIMARY_BUS))
				pcie->root_bus_nr = *data & 0xff;

			FUNC9(pcie, *data, FUNC0(index));
		}

		return PCIBIOS_SUCCESSFUL;
	}

	if (pcie->root_bus_nr < 0)
		return PCIBIOS_DEVICE_NOT_FOUND;

	/* Clear errors */
	FUNC9(pcie, FUNC8(pcie, PCIEERRFR), PCIEERRFR);

	/* Set the PIO address */
	FUNC9(pcie, FUNC1(bus->number) |
		FUNC2(dev) | FUNC3(func) | reg, PCIECAR);

	/* Enable the configuration access */
	if (bus->parent->number == pcie->root_bus_nr)
		FUNC9(pcie, CONFIG_SEND_ENABLE | TYPE0, PCIECCTLR);
	else
		FUNC9(pcie, CONFIG_SEND_ENABLE | TYPE1, PCIECCTLR);

	/* Check for errors */
	if (FUNC8(pcie, PCIEERRFR) & UNSUPPORTED_REQUEST)
		return PCIBIOS_DEVICE_NOT_FOUND;

	/* Check for master and target aborts */
	if (FUNC10(pcie, FUNC6(PCI_STATUS)) &
		(PCI_STATUS_REC_MASTER_ABORT | PCI_STATUS_REC_TARGET_ABORT))
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (access_type == RCAR_PCI_ACCESS_READ)
		*data = FUNC8(pcie, PCIECDR);
	else
		FUNC9(pcie, *data, PCIECDR);

	/* Disable the configuration access */
	FUNC9(pcie, 0, PCIECCTLR);

	return PCIBIOS_SUCCESSFUL;
}