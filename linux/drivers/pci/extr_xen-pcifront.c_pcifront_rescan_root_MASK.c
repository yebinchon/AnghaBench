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
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 struct pci_bus* FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*,int /*<<< orphan*/ ,struct pcifront_device*) ; 
 int /*<<< orphan*/  pcifront_claim_resource ; 
 int FUNC5 (struct pcifront_device*,unsigned int,unsigned int,struct pci_bus*) ; 
 int FUNC6 (struct pcifront_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct pcifront_device *pdev,
				   unsigned int domain, unsigned int bus)
{
	int err;
	struct pci_bus *b;

#ifndef CONFIG_PCI_DOMAINS
	if (domain != 0) {
		FUNC0(&pdev->xdev->dev,
			"PCI Root in non-zero PCI Domain! domain=%d\n", domain);
		FUNC0(&pdev->xdev->dev,
			"Please compile with CONFIG_PCI_DOMAINS\n");
		return -EINVAL;
	}
#endif

	FUNC1(&pdev->xdev->dev, "Rescanning PCI Frontend Bus %04x:%02x\n",
		 domain, bus);

	b = FUNC3(domain, bus);
	if (!b)
		/* If the bus is unknown, create it. */
		return FUNC6(pdev, domain, bus);

	err = FUNC5(pdev, domain, bus, b);

	/* Claim resources before going "live" with our devices */
	FUNC4(b, pcifront_claim_resource, pdev);

	/* Create SysFS and notify udev of the devices. Aka: "going live" */
	FUNC2(b);

	return err;
}