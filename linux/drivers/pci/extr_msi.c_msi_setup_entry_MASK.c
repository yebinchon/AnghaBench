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
struct pci_dev {scalar_t__ msi_cap; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int is_64; int maskbit; int multi_cap; int /*<<< orphan*/  multiple; int /*<<< orphan*/  default_irq; scalar_t__ entry_nr; scalar_t__ is_virtual; scalar_t__ is_msix; } ;
struct msi_desc {int /*<<< orphan*/  masked; scalar_t__ mask_pos; TYPE_1__ msi_attrib; } ;
struct irq_affinity_desc {int dummy; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_64BIT ; 
 int PCI_MSI_FLAGS_MASKBIT ; 
 int PCI_MSI_FLAGS_QMASK ; 
 scalar_t__ PCI_MSI_MASK_32 ; 
 scalar_t__ PCI_MSI_MASK_64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct msi_desc* FUNC1 (int /*<<< orphan*/ *,int,struct irq_affinity_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct irq_affinity_desc* FUNC3 (int,struct irq_affinity*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_affinity_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int*) ; 

__attribute__((used)) static struct msi_desc *
FUNC7(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
{
	struct irq_affinity_desc *masks = NULL;
	struct msi_desc *entry;
	u16 control;

	if (affd)
		masks = FUNC3(nvec, affd);

	/* MSI Entry Initialization */
	entry = FUNC1(&dev->dev, nvec, masks);
	if (!entry)
		goto out;

	FUNC6(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);

	entry->msi_attrib.is_msix	= 0;
	entry->msi_attrib.is_64		= !!(control & PCI_MSI_FLAGS_64BIT);
	entry->msi_attrib.is_virtual    = 0;
	entry->msi_attrib.entry_nr	= 0;
	entry->msi_attrib.maskbit	= !!(control & PCI_MSI_FLAGS_MASKBIT);
	entry->msi_attrib.default_irq	= dev->irq;	/* Save IOAPIC IRQ */
	entry->msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
	entry->msi_attrib.multiple	= FUNC2(FUNC0(nvec));

	if (control & PCI_MSI_FLAGS_64BIT)
		entry->mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
	else
		entry->mask_pos = dev->msi_cap + PCI_MSI_MASK_32;

	/* Save the initial mask status */
	if (entry->msi_attrib.maskbit)
		FUNC5(dev, entry->mask_pos, &entry->masked);

out:
	FUNC4(masks);
	return entry;
}