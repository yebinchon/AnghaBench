
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int devfn; int bus; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int pci_bus_write_config_dword (int ,int ,int,int ) ;
 scalar_t__ pci_dev_is_disconnected (struct pci_dev const*) ;

int pci_write_config_dword(const struct pci_dev *dev, int where,
      u32 val)
{
 if (pci_dev_is_disconnected(dev))
  return PCIBIOS_DEVICE_NOT_FOUND;
 return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
}
