
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_STORAGE_SCSI ;
 int pci_info (struct pci_dev*,char*,int,int) ;

__attribute__((used)) static void fixup_rev1_53c810(struct pci_dev *dev)
{
 u32 class = dev->class;





 if (class)
  return;

 dev->class = PCI_CLASS_STORAGE_SCSI << 8;
 pci_info(dev, "NCR 53c810 rev 1 PCI class overridden (%#08x -> %#08x)\n",
   class, dev->class);
}
