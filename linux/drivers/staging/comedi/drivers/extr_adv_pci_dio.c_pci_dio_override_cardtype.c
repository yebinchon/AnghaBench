
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 unsigned long TYPE_PCI1753 ;
 unsigned long TYPE_PCI1753E ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 scalar_t__ pci_request_region (struct pci_dev*,int,char*) ;
 int pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static unsigned long pci_dio_override_cardtype(struct pci_dev *pcidev,
            unsigned long cardtype)
{





 if (cardtype != TYPE_PCI1753)
  return cardtype;
 if (pci_enable_device(pcidev) < 0)
  return cardtype;
 if (pci_request_region(pcidev, 2, "adv_pci_dio") == 0) {





  unsigned long reg = pci_resource_start(pcidev, 2) + 53;

  outb(0x05, reg);
  if ((inb(reg) & 0x07) == 0x02) {
   outb(0x02, reg);
   if ((inb(reg) & 0x07) == 0x05)
    cardtype = TYPE_PCI1753E;
  }
  pci_release_region(pcidev, 2);
 }
 pci_disable_device(pcidev);
 return cardtype;
}
