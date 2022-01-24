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
struct pci_dev {void* msix_cap; void* msi_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 int /*<<< orphan*/  PCI_MSIX_FLAGS_ENABLE ; 
 void* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	/*
	 * Disable the MSI hardware to avoid screaming interrupts
	 * during boot.  This is the power on reset default so
	 * usually this should be a noop.
	 */
	dev->msi_cap = FUNC0(dev, PCI_CAP_ID_MSI);
	if (dev->msi_cap)
		FUNC1(dev, 0);

	dev->msix_cap = FUNC0(dev, PCI_CAP_ID_MSIX);
	if (dev->msix_cap)
		FUNC2(dev, PCI_MSIX_FLAGS_ENABLE, 0);
}