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
struct pci_bus {int /*<<< orphan*/  bridge_ctl; int /*<<< orphan*/  busn_res; struct pci_dev* self; } ;

/* Variables and functions */
 unsigned long IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 unsigned long IORESOURCE_PREFETCH ; 
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_bus *bus, unsigned long type)
{
	struct pci_dev *bridge = bus->self;

	FUNC0(bridge, "PCI bridge to %pR\n",
		 &bus->busn_res);

	if (type & IORESOURCE_IO)
		FUNC1(bridge);

	if (type & IORESOURCE_MEM)
		FUNC2(bridge);

	if (type & IORESOURCE_PREFETCH)
		FUNC3(bridge);

	FUNC4(bridge, PCI_BRIDGE_CONTROL, bus->bridge_ctl);
}