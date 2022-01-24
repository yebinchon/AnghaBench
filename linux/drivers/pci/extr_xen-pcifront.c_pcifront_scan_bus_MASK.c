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
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (struct pci_bus*,unsigned int) ; 
 struct pci_dev* FUNC5 (struct pci_bus*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct pcifront_device *pdev,
				unsigned int domain, unsigned int bus,
				struct pci_bus *b)
{
	struct pci_dev *d;
	unsigned int devfn;

	/* Scan the bus for functions and add.
	 * We omit handling of PCI bridge attachment because pciback prevents
	 * bridges from being exported.
	 */
	for (devfn = 0; devfn < 0x100; devfn++) {
		d = FUNC4(b, devfn);
		if (d) {
			/* Device is already known. */
			FUNC3(d);
			continue;
		}

		d = FUNC5(b, devfn);
		if (d)
			FUNC2(&pdev->xdev->dev, "New device on "
				 "%04x:%02x:%02x.%d found.\n", domain, bus,
				 FUNC1(devfn), FUNC0(devfn));
	}

	return 0;
}