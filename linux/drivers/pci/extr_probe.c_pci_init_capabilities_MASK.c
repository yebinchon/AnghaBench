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
struct pci_dev {int reset_fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *dev)
{
	/* Enhanced Allocation */
	FUNC4(dev);

	/* Setup MSI caps & disable MSI/MSI-X interrupts */
	FUNC7(dev);

	/* Buffers for saving PCIe and PCI-X capabilities */
	FUNC1(dev);

	/* Power Management */
	FUNC8(dev);

	/* Vital Product Data */
	FUNC11(dev);

	/* Alternative Routing-ID Forwarding */
	FUNC3(dev);

	/* Single Root I/O Virtualization */
	FUNC6(dev);

	/* Address Translation Services */
	FUNC2(dev);

	/* Enable ACS P2P upstream forwarding */
	FUNC5(dev);

	/* Precision Time Measurement */
	FUNC10(dev);

	/* Advanced Error Reporting */
	FUNC0(dev);

	FUNC12(dev);

	if (FUNC9(dev) == 0)
		dev->reset_fn = 1;
}