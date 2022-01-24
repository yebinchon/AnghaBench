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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  pme_support; struct pci_bus* bus; } ;
struct pci_bus {int /*<<< orphan*/ * bridge; struct pci_bus* parent; struct pci_dev* self; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

bool FUNC3(struct pci_dev *dev)
{
	struct pci_bus *bus = dev->bus;

	if (!dev->pme_support)
		return false;

	/* PME-capable in principle, but not from the target power state */
	if (!FUNC1(dev, FUNC2(dev, true)))
		return false;

	if (FUNC0(&dev->dev))
		return true;

	while (bus->parent) {
		struct pci_dev *bridge = bus->self;

		if (FUNC0(&bridge->dev))
			return true;

		bus = bus->parent;
	}

	/* We have reached the root bus. */
	if (bus->bridge)
		return FUNC0(bus->bridge);

	return false;
}