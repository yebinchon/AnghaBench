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
struct pci_device_id {int class; int /*<<< orphan*/  member_0; int /*<<< orphan*/  class_mask; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;

/* Variables and functions */
#define  PCIE_RC_K2E 133 
#define  PCIE_RC_K2G 132 
#define  PCIE_RC_K2HK 131 
#define  PCIE_RC_K2L 130 
#define  PCI_CLASS_BRIDGE_PCI 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
#define  PCI_VENDOR_ID_TI 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct pci_bus*) ; 
 scalar_t__ FUNC3 (struct pci_device_id const*,struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct pci_bus *bus = dev->bus;
	struct pci_dev *bridge;
	static const struct pci_device_id rc_pci_devids[] = {
		{ FUNC0(PCI_VENDOR_ID_TI, PCIE_RC_K2HK),
		 .class = PCI_CLASS_BRIDGE_PCI << 8, .class_mask = ~0, },
		{ FUNC0(PCI_VENDOR_ID_TI, PCIE_RC_K2E),
		 .class = PCI_CLASS_BRIDGE_PCI << 8, .class_mask = ~0, },
		{ FUNC0(PCI_VENDOR_ID_TI, PCIE_RC_K2L),
		 .class = PCI_CLASS_BRIDGE_PCI << 8, .class_mask = ~0, },
		{ FUNC0(PCI_VENDOR_ID_TI, PCIE_RC_K2G),
		 .class = PCI_CLASS_BRIDGE_PCI << 8, .class_mask = ~0, },
		{ 0, },
	};

	if (FUNC2(bus))
		bridge = dev;

	/* look for the host bridge */
	while (!FUNC2(bus)) {
		bridge = bus->self;
		bus = bus->parent;
	}

	if (!bridge)
		return;

	/*
	 * Keystone PCI controller has a h/w limitation of
	 * 256 bytes maximum read request size.  It can't handle
	 * anything higher than this.  So force this limit on
	 * all downstream devices.
	 */
	if (FUNC3(rc_pci_devids, bridge)) {
		if (FUNC4(dev) > 256) {
			FUNC1(&dev->dev, "limiting MRRS to 256\n");
			FUNC5(dev, 256);
		}
	}
}