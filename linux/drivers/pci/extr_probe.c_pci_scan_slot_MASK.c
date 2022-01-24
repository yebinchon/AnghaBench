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
struct pci_dev {int multifunction; } ;
struct pci_bus {scalar_t__ self; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct pci_bus*,struct pci_dev*,unsigned int) ; 
 scalar_t__ FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(struct pci_bus *bus, int devfn)
{
	unsigned fn, nr = 0;
	struct pci_dev *dev;

	if (FUNC1(bus) && (devfn > 0))
		return 0; /* Already scanned the entire slot */

	dev = FUNC3(bus, devfn);
	if (!dev)
		return 0;
	if (!FUNC2(dev))
		nr++;

	for (fn = FUNC0(bus, dev, 0); fn > 0; fn = FUNC0(bus, dev, fn)) {
		dev = FUNC3(bus, devfn + fn);
		if (dev) {
			if (!FUNC2(dev))
				nr++;
			dev->multifunction = 1;
		}
	}

	/* Only one slot has PCIe device */
	if (bus->self && nr)
		FUNC4(bus->self);

	return nr;
}