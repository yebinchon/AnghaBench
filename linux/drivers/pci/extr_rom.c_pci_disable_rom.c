
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; struct resource* resource; } ;


 int IORESOURCE_ROM_SHADOW ;
 int PCI_ROM_ADDRESS_ENABLE ;
 size_t PCI_ROM_RESOURCE ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

void pci_disable_rom(struct pci_dev *pdev)
{
 struct resource *res = &pdev->resource[PCI_ROM_RESOURCE];
 u32 rom_addr;

 if (res->flags & IORESOURCE_ROM_SHADOW)
  return;

 pci_read_config_dword(pdev, pdev->rom_base_reg, &rom_addr);
 rom_addr &= ~PCI_ROM_ADDRESS_ENABLE;
 pci_write_config_dword(pdev, pdev->rom_base_reg, rom_addr);
}
