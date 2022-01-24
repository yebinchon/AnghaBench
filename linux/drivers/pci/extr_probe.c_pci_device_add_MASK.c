#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int coherent_dma_mask; int /*<<< orphan*/ * dma_parms; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/  release; } ;
struct pci_dev {int state_saved; int match_driver; TYPE_1__ dev; int /*<<< orphan*/  bus_list; int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; } ;
struct pci_bus {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  pci_fixup_header ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_release_dev ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct pci_dev *dev, struct pci_bus *bus)
{
	int ret;

	FUNC7(dev);

	FUNC2(&dev->dev);
	dev->dev.release = pci_release_dev;

	FUNC14(&dev->dev, FUNC13(bus));
	dev->dev.dma_mask = &dev->dma_mask;
	dev->dev.dma_parms = &dev->dma_parms;
	dev->dev.coherent_dma_mask = 0xffffffffull;

	FUNC3(&dev->dev, 65536);
	FUNC4(&dev->dev, 0xffffffff);

	/* Fix up broken headers */
	FUNC8(pci_fixup_header, dev);

	/* Moved out from quirk header fixup code */
	FUNC10(dev);

	/* Clear the state_saved flag */
	dev->state_saved = false;

	/* Initialize various capabilities */
	FUNC9(dev);

	/*
	 * Add the device to our list of discovered devices
	 * and the bus list for fixup functions, etc.
	 */
	FUNC5(&pci_bus_sem);
	FUNC6(&dev->bus_list, &bus->devices);
	FUNC15(&pci_bus_sem);

	ret = FUNC12(dev);
	FUNC0(ret < 0);

	/* Set up MSI IRQ domain */
	FUNC11(dev);

	/* Notifier could use PCI capabilities */
	dev->match_driver = false;
	ret = FUNC1(&dev->dev);
	FUNC0(ret < 0);
}