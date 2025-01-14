
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {scalar_t__ msi_cap; int irq; int dev; } ;
struct TYPE_2__ {int is_64; int maskbit; int multi_cap; int multiple; int default_irq; scalar_t__ entry_nr; scalar_t__ is_virtual; scalar_t__ is_msix; } ;
struct msi_desc {int masked; scalar_t__ mask_pos; TYPE_1__ msi_attrib; } ;
struct irq_affinity_desc {int dummy; } ;
struct irq_affinity {int dummy; } ;


 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_64BIT ;
 int PCI_MSI_FLAGS_MASKBIT ;
 int PCI_MSI_FLAGS_QMASK ;
 scalar_t__ PCI_MSI_MASK_32 ;
 scalar_t__ PCI_MSI_MASK_64 ;
 int __roundup_pow_of_two (int) ;
 struct msi_desc* alloc_msi_entry (int *,int,struct irq_affinity_desc*) ;
 int ilog2 (int ) ;
 struct irq_affinity_desc* irq_create_affinity_masks (int,struct irq_affinity*) ;
 int kfree (struct irq_affinity_desc*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static struct msi_desc *
msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
{
 struct irq_affinity_desc *masks = ((void*)0);
 struct msi_desc *entry;
 u16 control;

 if (affd)
  masks = irq_create_affinity_masks(nvec, affd);


 entry = alloc_msi_entry(&dev->dev, nvec, masks);
 if (!entry)
  goto out;

 pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);

 entry->msi_attrib.is_msix = 0;
 entry->msi_attrib.is_64 = !!(control & PCI_MSI_FLAGS_64BIT);
 entry->msi_attrib.is_virtual = 0;
 entry->msi_attrib.entry_nr = 0;
 entry->msi_attrib.maskbit = !!(control & PCI_MSI_FLAGS_MASKBIT);
 entry->msi_attrib.default_irq = dev->irq;
 entry->msi_attrib.multi_cap = (control & PCI_MSI_FLAGS_QMASK) >> 1;
 entry->msi_attrib.multiple = ilog2(__roundup_pow_of_two(nvec));

 if (control & PCI_MSI_FLAGS_64BIT)
  entry->mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
 else
  entry->mask_pos = dev->msi_cap + PCI_MSI_MASK_32;


 if (entry->msi_attrib.maskbit)
  pci_read_config_dword(dev, entry->mask_pos, &entry->masked);

out:
 kfree(masks);
 return entry;
}
