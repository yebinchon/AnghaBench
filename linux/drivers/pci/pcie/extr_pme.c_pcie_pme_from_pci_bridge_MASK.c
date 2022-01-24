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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct pci_bus {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct pci_bus *bus, u8 devfn)
{
	struct pci_dev *dev;
	bool found = false;

	if (devfn)
		return false;

	dev = FUNC1(bus->self);
	if (!dev)
		return false;

	if (FUNC3(dev) && FUNC4(dev) == PCI_EXP_TYPE_PCI_BRIDGE) {
		FUNC0(&pci_bus_sem);
		if (FUNC5(bus))
			found = true;
		FUNC6(&pci_bus_sem);
	}

	FUNC2(dev);
	return found;
}