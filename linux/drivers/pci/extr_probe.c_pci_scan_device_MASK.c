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
typedef  int u32 ;
struct pci_dev {int devfn; int vendor; int device; int /*<<< orphan*/  bus; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static struct pci_dev *FUNC6(struct pci_bus *bus, int devfn)
{
	struct pci_dev *dev;
	u32 l;

	if (!FUNC3(bus, devfn, &l, 60*1000))
		return NULL;

	dev = FUNC1(bus);
	if (!dev)
		return NULL;

	dev->devfn = devfn;
	dev->vendor = l & 0xffff;
	dev->device = (l >> 16) & 0xffff;

	FUNC4(dev);

	if (FUNC5(dev)) {
		FUNC2(dev->bus);
		FUNC0(dev);
		return NULL;
	}

	return dev;
}