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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct pci_bus*) ; 
 struct pci_dev* FUNC2 (struct pci_bus*,int) ; 
 struct pci_dev* FUNC3 (struct pci_bus*,int) ; 

struct pci_dev *FUNC4(struct pci_bus *bus, int devfn)
{
	struct pci_dev *dev;

	dev = FUNC2(bus, devfn);
	if (dev) {
		FUNC0(dev);
		return dev;
	}

	dev = FUNC3(bus, devfn);
	if (!dev)
		return NULL;

	FUNC1(dev, bus);

	return dev;
}