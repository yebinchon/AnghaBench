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
struct device {int /*<<< orphan*/ * parent; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; } ;
struct pcie_device {int irq; int service; struct device device; struct pci_dev* port; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct pcie_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcie_port_bus_type ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  release_pcie_device ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, int service, int irq)
{
	int retval;
	struct pcie_device *pcie;
	struct device *device;

	pcie = FUNC4(sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;
	pcie->port = pdev;
	pcie->irq = irq;
	pcie->service = service;

	/* Initialize generic device interface */
	device = &pcie->device;
	device->bus = &pcie_port_bus_type;
	device->release = release_pcie_device;	/* callback to free pcie dev */
	FUNC0(device, "%s:pcie%03x",
		     FUNC5(pdev),
		     FUNC3(FUNC6(pdev), service));
	device->parent = &pdev->dev;
	FUNC1(device);

	retval = FUNC2(device);
	if (retval) {
		FUNC8(device);
		return retval;
	}

	FUNC7(device);

	return 0;
}