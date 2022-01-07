
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int msi_enabled; int irq; int dev; } ;
struct TYPE_2__ {int multi_cap; } ;
struct msi_desc {int irq; int list; TYPE_1__ msi_attrib; } ;
struct irq_affinity {int dummy; } ;


 int ENOMEM ;
 int PCI_CAP_ID_MSI ;
 int dev_to_msi_list (int *) ;
 int free_msi_irqs (struct pci_dev*) ;
 int list_add_tail (int *,int ) ;
 unsigned int msi_mask (int ) ;
 int msi_mask_irq (struct msi_desc*,unsigned int,unsigned int) ;
 struct msi_desc* msi_setup_entry (struct pci_dev*,int,struct irq_affinity*) ;
 int msi_verify_entries (struct pci_dev*) ;
 int pci_intx_for_msi (struct pci_dev*,int ) ;
 int pci_msi_set_enable (struct pci_dev*,int) ;
 int pci_msi_setup_msi_irqs (struct pci_dev*,int,int ) ;
 int pcibios_free_irq (struct pci_dev*) ;
 int populate_msi_sysfs (struct pci_dev*) ;

__attribute__((used)) static int msi_capability_init(struct pci_dev *dev, int nvec,
          struct irq_affinity *affd)
{
 struct msi_desc *entry;
 int ret;
 unsigned mask;

 pci_msi_set_enable(dev, 0);

 entry = msi_setup_entry(dev, nvec, affd);
 if (!entry)
  return -ENOMEM;


 mask = msi_mask(entry->msi_attrib.multi_cap);
 msi_mask_irq(entry, mask, mask);

 list_add_tail(&entry->list, dev_to_msi_list(&dev->dev));


 ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSI);
 if (ret) {
  msi_mask_irq(entry, mask, ~mask);
  free_msi_irqs(dev);
  return ret;
 }

 ret = msi_verify_entries(dev);
 if (ret) {
  msi_mask_irq(entry, mask, ~mask);
  free_msi_irqs(dev);
  return ret;
 }

 ret = populate_msi_sysfs(dev);
 if (ret) {
  msi_mask_irq(entry, mask, ~mask);
  free_msi_irqs(dev);
  return ret;
 }


 pci_intx_for_msi(dev, 0);
 pci_msi_set_enable(dev, 1);
 dev->msi_enabled = 1;

 pcibios_free_irq(dev);
 dev->irq = entry->irq;
 return 0;
}
