
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; int mmio_always_on; int bus; scalar_t__ is_virtfn; struct resource* resource; } ;
struct pci_bus_region {int start; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM_64 ;
 int IORESOURCE_PCI_FIXED ;
 int IORESOURCE_ROM_ENABLE ;
 int IORESOURCE_UNSET ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_IO_MASK ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int PCI_ROM_ADDRESS_ENABLE ;
 int PCI_ROM_ADDRESS_MASK ;
 int PCI_ROM_RESOURCE ;
 int pci_err (struct pci_dev*,char*,int,int,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

__attribute__((used)) static void pci_std_update_resource(struct pci_dev *dev, int resno)
{
 struct pci_bus_region region;
 bool disable;
 u16 cmd;
 u32 new, check, mask;
 int reg;
 struct resource *res = dev->resource + resno;


 if (dev->is_virtfn)
  return;





 if (!res->flags)
  return;

 if (res->flags & IORESOURCE_UNSET)
  return;






 if (res->flags & IORESOURCE_PCI_FIXED)
  return;

 pcibios_resource_to_bus(dev->bus, &region, res);
 new = region.start;

 if (res->flags & IORESOURCE_IO) {
  mask = (u32)PCI_BASE_ADDRESS_IO_MASK;
  new |= res->flags & ~PCI_BASE_ADDRESS_IO_MASK;
 } else if (resno == PCI_ROM_RESOURCE) {
  mask = PCI_ROM_ADDRESS_MASK;
 } else {
  mask = (u32)PCI_BASE_ADDRESS_MEM_MASK;
  new |= res->flags & ~PCI_BASE_ADDRESS_MEM_MASK;
 }

 if (resno < PCI_ROM_RESOURCE) {
  reg = PCI_BASE_ADDRESS_0 + 4 * resno;
 } else if (resno == PCI_ROM_RESOURCE) {






  if (!(res->flags & IORESOURCE_ROM_ENABLE))
   return;

  reg = dev->rom_base_reg;
  new |= PCI_ROM_ADDRESS_ENABLE;
 } else
  return;






 disable = (res->flags & IORESOURCE_MEM_64) && !dev->mmio_always_on;
 if (disable) {
  pci_read_config_word(dev, PCI_COMMAND, &cmd);
  pci_write_config_word(dev, PCI_COMMAND,
          cmd & ~PCI_COMMAND_MEMORY);
 }

 pci_write_config_dword(dev, reg, new);
 pci_read_config_dword(dev, reg, &check);

 if ((new ^ check) & mask) {
  pci_err(dev, "BAR %d: error updating (%#08x != %#08x)\n",
   resno, new, check);
 }

 if (res->flags & IORESOURCE_MEM_64) {
  new = region.start >> 16 >> 16;
  pci_write_config_dword(dev, reg + 4, new);
  pci_read_config_dword(dev, reg + 4, &check);
  if (check != new) {
   pci_err(dev, "BAR %d: error updating (high %#08x != %#08x)\n",
    resno, new, check);
  }
 }

 if (disable)
  pci_write_config_word(dev, PCI_COMMAND, cmd);
}
