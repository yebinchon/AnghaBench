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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct pci_bus {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_ACS_CTRL ; 
 int PCI_ACS_SV ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ACS ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 int FUNC0 (struct pci_bus*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int) ; 

int FUNC5(struct pci_bus *bus, int devfn, u32 *l, int timeout)
{
	int pos;
	u16 ctrl = 0;
	bool found;
	struct pci_dev *bridge = bus->self;

	pos = FUNC2(bridge, PCI_EXT_CAP_ID_ACS);

	/* Disable ACS SV before initial config reads */
	if (pos) {
		FUNC3(bridge, pos + PCI_ACS_CTRL, &ctrl);
		if (ctrl & PCI_ACS_SV)
			FUNC4(bridge, pos + PCI_ACS_CTRL,
					      ctrl & ~PCI_ACS_SV);
	}

	found = FUNC0(bus, devfn, l, timeout);

	/* Write Vendor ID (read-only) so the endpoint latches its bus/dev */
	if (found)
		FUNC1(bus, devfn, PCI_VENDOR_ID, 0);

	/* Re-enable ACS_SV if it was previously enabled */
	if (ctrl & PCI_ACS_SV)
		FUNC4(bridge, pos + PCI_ACS_CTRL, ctrl);

	return found;
}