
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
struct pci_dev {int bus; struct resource* resource; } ;
struct pci_bus_region {int start; int end; } ;


 int IORESOURCE_MEM ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_MEMORY_BASE ;
 int pci_info (struct pci_dev*,char*,struct resource*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

__attribute__((used)) static void pci_setup_bridge_mmio(struct pci_dev *bridge)
{
 struct resource *res;
 struct pci_bus_region region;
 u32 l;


 res = &bridge->resource[PCI_BRIDGE_RESOURCES + 1];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_MEM) {
  l = (region.start >> 16) & 0xfff0;
  l |= region.end & 0xfff00000;
  pci_info(bridge, "  bridge window %pR\n", res);
 } else {
  l = 0x0000fff0;
 }
 pci_write_config_dword(bridge, PCI_MEMORY_BASE, l);
}
