
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; } ;
struct pci_dev {int bus; } ;
struct pci_bus_region {unsigned long start; unsigned long end; } ;
struct pci_bus {struct resource** resource; struct pci_dev* self; } ;


 int IORESOURCE_MEM ;
 int PCI_MEMORY_BASE ;
 int PCI_MEMORY_LIMIT ;
 unsigned long PCI_MEMORY_RANGE_MASK ;
 int PCI_MEMORY_RANGE_TYPE_MASK ;
 int pci_info (struct pci_dev*,char*,struct resource*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pcibios_bus_to_resource (int ,struct resource*,struct pci_bus_region*) ;

__attribute__((used)) static void pci_read_bridge_mmio(struct pci_bus *child)
{
 struct pci_dev *dev = child->self;
 u16 mem_base_lo, mem_limit_lo;
 unsigned long base, limit;
 struct pci_bus_region region;
 struct resource *res;

 res = child->resource[1];
 pci_read_config_word(dev, PCI_MEMORY_BASE, &mem_base_lo);
 pci_read_config_word(dev, PCI_MEMORY_LIMIT, &mem_limit_lo);
 base = ((unsigned long) mem_base_lo & PCI_MEMORY_RANGE_MASK) << 16;
 limit = ((unsigned long) mem_limit_lo & PCI_MEMORY_RANGE_MASK) << 16;
 if (base <= limit) {
  res->flags = (mem_base_lo & PCI_MEMORY_RANGE_TYPE_MASK) | IORESOURCE_MEM;
  region.start = base;
  region.end = limit + 0xfffff;
  pcibios_bus_to_resource(dev->bus, res, &region);
  pci_info(dev, "  bridge window %pR\n", res);
 }
}
