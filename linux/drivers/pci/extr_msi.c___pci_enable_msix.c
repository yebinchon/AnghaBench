
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ msi_enabled; } ;
struct msix_entry {int entry; } ;
struct irq_affinity {int dummy; } ;


 int EINVAL ;
 int PCI_IRQ_VIRTUAL ;
 int msix_capability_init (struct pci_dev*,struct msix_entry*,int,struct irq_affinity*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_msi_supported (struct pci_dev*,int) ;
 int pci_msix_vec_count (struct pci_dev*) ;

__attribute__((used)) static int __pci_enable_msix(struct pci_dev *dev, struct msix_entry *entries,
        int nvec, struct irq_affinity *affd, int flags)
{
 int nr_entries;
 int i, j;

 if (!pci_msi_supported(dev, nvec))
  return -EINVAL;

 nr_entries = pci_msix_vec_count(dev);
 if (nr_entries < 0)
  return nr_entries;
 if (nvec > nr_entries && !(flags & PCI_IRQ_VIRTUAL))
  return nr_entries;

 if (entries) {

  for (i = 0; i < nvec; i++) {
   if (entries[i].entry >= nr_entries)
    return -EINVAL;
   for (j = i + 1; j < nvec; j++) {
    if (entries[i].entry == entries[j].entry)
     return -EINVAL;
   }
  }
 }


 if (dev->msi_enabled) {
  pci_info(dev, "can't enable MSI-X (MSI IRQ already assigned)\n");
  return -EINVAL;
 }
 return msix_capability_init(dev, entries, nvec, affd);
}
