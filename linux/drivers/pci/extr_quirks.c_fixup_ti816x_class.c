
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_MULTIMEDIA_VIDEO ;
 int pci_info (struct pci_dev*,char*,int,int) ;

__attribute__((used)) static void fixup_ti816x_class(struct pci_dev *dev)
{
 u32 class = dev->class;


 dev->class = PCI_CLASS_MULTIMEDIA_VIDEO << 8;
 pci_info(dev, "PCI class overridden (%#08x -> %#08x)\n",
   class, dev->class);
}
