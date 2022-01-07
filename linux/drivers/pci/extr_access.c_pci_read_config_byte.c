
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; int bus; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int pci_bus_read_config_byte (int ,int ,int,int *) ;
 scalar_t__ pci_dev_is_disconnected (struct pci_dev const*) ;

int pci_read_config_byte(const struct pci_dev *dev, int where, u8 *val)
{
 if (pci_dev_is_disconnected(dev)) {
  *val = ~0;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }
 return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
}
