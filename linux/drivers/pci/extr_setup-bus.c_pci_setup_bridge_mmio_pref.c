
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int bus; struct resource* resource; } ;
struct pci_bus_region {int start; int end; } ;


 int IORESOURCE_MEM_64 ;
 int IORESOURCE_PREFETCH ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_PREF_BASE_UPPER32 ;
 int PCI_PREF_LIMIT_UPPER32 ;
 int PCI_PREF_MEMORY_BASE ;
 int pci_info (struct pci_dev*,char*,struct resource*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void pci_setup_bridge_mmio_pref(struct pci_dev *bridge)
{
 struct resource *res;
 struct pci_bus_region region;
 u32 l, bu, lu;






 pci_write_config_dword(bridge, PCI_PREF_LIMIT_UPPER32, 0);


 bu = lu = 0;
 res = &bridge->resource[PCI_BRIDGE_RESOURCES + 2];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_PREFETCH) {
  l = (region.start >> 16) & 0xfff0;
  l |= region.end & 0xfff00000;
  if (res->flags & IORESOURCE_MEM_64) {
   bu = upper_32_bits(region.start);
   lu = upper_32_bits(region.end);
  }
  pci_info(bridge, "  bridge window %pR\n", res);
 } else {
  l = 0x0000fff0;
 }
 pci_write_config_dword(bridge, PCI_PREF_MEMORY_BASE, l);


 pci_write_config_dword(bridge, PCI_PREF_BASE_UPPER32, bu);
 pci_write_config_dword(bridge, PCI_PREF_LIMIT_UPPER32, lu);
}
