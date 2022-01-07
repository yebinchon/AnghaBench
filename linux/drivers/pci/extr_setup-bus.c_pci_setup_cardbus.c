
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {int end; int start; } ;
struct pci_bus {struct resource** resource; struct resource busn_res; struct pci_dev* self; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCI_CB_IO_BASE_0 ;
 int PCI_CB_IO_BASE_1 ;
 int PCI_CB_IO_LIMIT_0 ;
 int PCI_CB_IO_LIMIT_1 ;
 int PCI_CB_MEMORY_BASE_0 ;
 int PCI_CB_MEMORY_BASE_1 ;
 int PCI_CB_MEMORY_LIMIT_0 ;
 int PCI_CB_MEMORY_LIMIT_1 ;
 int pci_info (struct pci_dev*,char*,struct resource*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

void pci_setup_cardbus(struct pci_bus *bus)
{
 struct pci_dev *bridge = bus->self;
 struct resource *res;
 struct pci_bus_region region;

 pci_info(bridge, "CardBus bridge to %pR\n",
   &bus->busn_res);

 res = bus->resource[0];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_IO) {




  pci_info(bridge, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_IO_BASE_0,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_IO_LIMIT_0,
     region.end);
 }

 res = bus->resource[1];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_IO) {
  pci_info(bridge, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_IO_BASE_1,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_IO_LIMIT_1,
     region.end);
 }

 res = bus->resource[2];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_MEM) {
  pci_info(bridge, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_BASE_0,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_LIMIT_0,
     region.end);
 }

 res = bus->resource[3];
 pcibios_resource_to_bus(bridge->bus, &region, res);
 if (res->flags & IORESOURCE_MEM) {
  pci_info(bridge, "  bridge window %pR\n", res);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_BASE_1,
     region.start);
  pci_write_config_dword(bridge, PCI_CB_MEMORY_LIMIT_1,
     region.end);
 }
}
