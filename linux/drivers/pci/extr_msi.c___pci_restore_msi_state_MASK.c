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
typedef  int u16 ;
struct pci_dev {scalar_t__ msi_cap; int /*<<< orphan*/  irq; int /*<<< orphan*/  msi_enabled; } ;
struct TYPE_2__ {int multiple; int /*<<< orphan*/  multi_cap; } ;
struct msi_desc {TYPE_1__ msi_attrib; int /*<<< orphan*/  masked; } ;

/* Variables and functions */
 scalar_t__ PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_ENABLE ; 
 int PCI_MSI_FLAGS_QSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct msi_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msi_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	u16 control;
	struct msi_desc *entry;

	if (!dev->msi_enabled)
		return;

	entry = FUNC1(dev->irq);

	FUNC4(dev, 0);
	FUNC5(dev, 0);
	FUNC0(dev);

	FUNC6(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
	FUNC3(entry, FUNC2(entry->msi_attrib.multi_cap),
		     entry->masked);
	control &= ~PCI_MSI_FLAGS_QSIZE;
	control |= (entry->msi_attrib.multiple << 4) | PCI_MSI_FLAGS_ENABLE;
	FUNC7(dev, dev->msi_cap + PCI_MSI_FLAGS, control);
}