
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;


 int ENODEV ;
 int moan_device (char*,struct pci_dev*) ;
 int pci_siig10x_init (struct pci_dev*) ;
 int pci_siig20x_init (struct pci_dev*) ;

__attribute__((used)) static int pci_siig_init(struct pci_dev *dev)
{
 unsigned int type = dev->device & 0xff00;

 if (type == 0x1000)
  return pci_siig10x_init(dev);
 else if (type == 0x2000)
  return pci_siig20x_init(dev);

 moan_device("Unknown SIIG card", dev);
 return -ENODEV;
}
