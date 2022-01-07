
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; int bus; struct resource* resource; } ;
struct pci_bus_region {int start; } ;


 int IORESOURCE_ROM_SHADOW ;
 int PCI_ROM_ADDRESS_ENABLE ;
 int PCI_ROM_ADDRESS_MASK ;
 size_t PCI_ROM_RESOURCE ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

int pci_enable_rom(struct pci_dev *pdev)
{
 struct resource *res = &pdev->resource[PCI_ROM_RESOURCE];
 struct pci_bus_region region;
 u32 rom_addr;

 if (!res->flags)
  return -1;


 if (res->flags & IORESOURCE_ROM_SHADOW)
  return 0;






 pcibios_resource_to_bus(pdev->bus, &region, res);
 pci_read_config_dword(pdev, pdev->rom_base_reg, &rom_addr);
 rom_addr &= ~PCI_ROM_ADDRESS_MASK;
 rom_addr |= region.start | PCI_ROM_ADDRESS_ENABLE;
 pci_write_config_dword(pdev, pdev->rom_base_reg, rom_addr);
 return 0;
}
