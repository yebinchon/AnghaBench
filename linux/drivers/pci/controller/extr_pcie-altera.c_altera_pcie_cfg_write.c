
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; struct altera_pcie* sysdata; } ;
struct altera_pcie {int dummy; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_SLOT (unsigned int) ;
 int _altera_pcie_cfg_write (struct altera_pcie*,int ,unsigned int,int,int,int ) ;
 scalar_t__ altera_pcie_hide_rc_bar (struct pci_bus*,unsigned int,int) ;
 int altera_pcie_valid_device (struct altera_pcie*,struct pci_bus*,int ) ;

__attribute__((used)) static int altera_pcie_cfg_write(struct pci_bus *bus, unsigned int devfn,
     int where, int size, u32 value)
{
 struct altera_pcie *pcie = bus->sysdata;

 if (altera_pcie_hide_rc_bar(bus, devfn, where))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 if (!altera_pcie_valid_device(pcie, bus, PCI_SLOT(devfn)))
  return PCIBIOS_DEVICE_NOT_FOUND;

 return _altera_pcie_cfg_write(pcie, bus->number, devfn, where, size,
         value);
}
