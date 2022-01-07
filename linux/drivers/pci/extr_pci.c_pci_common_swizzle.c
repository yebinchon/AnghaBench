
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int PCI_SLOT (int ) ;
 int pci_is_root_bus (TYPE_1__*) ;
 int pci_swizzle_interrupt_pin (struct pci_dev*,int ) ;

u8 pci_common_swizzle(struct pci_dev *dev, u8 *pinp)
{
 u8 pin = *pinp;

 while (!pci_is_root_bus(dev->bus)) {
  pin = pci_swizzle_interrupt_pin(dev, pin);
  dev = dev->bus->self;
 }
 *pinp = pin;
 return PCI_SLOT(dev->devfn);
}
