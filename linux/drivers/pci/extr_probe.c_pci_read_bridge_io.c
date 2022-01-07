
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef scalar_t__ u16 ;
struct resource {unsigned long flags; } ;
struct pci_dev {int bus; scalar_t__ io_window_1k; } ;
struct pci_bus_region {unsigned long start; unsigned long end; } ;
struct pci_bus {struct resource** resource; struct pci_dev* self; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long PCI_IO_1K_RANGE_MASK ;
 int PCI_IO_BASE ;
 int PCI_IO_BASE_UPPER16 ;
 int PCI_IO_LIMIT ;
 int PCI_IO_LIMIT_UPPER16 ;
 unsigned long PCI_IO_RANGE_MASK ;
 unsigned long PCI_IO_RANGE_TYPE_32 ;
 unsigned long PCI_IO_RANGE_TYPE_MASK ;
 int pci_info (struct pci_dev*,char*,struct resource*) ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned long*) ;
 int pci_read_config_word (struct pci_dev*,int ,scalar_t__*) ;
 int pcibios_bus_to_resource (int ,struct resource*,struct pci_bus_region*) ;

__attribute__((used)) static void pci_read_bridge_io(struct pci_bus *child)
{
 struct pci_dev *dev = child->self;
 u8 io_base_lo, io_limit_lo;
 unsigned long io_mask, io_granularity, base, limit;
 struct pci_bus_region region;
 struct resource *res;

 io_mask = PCI_IO_RANGE_MASK;
 io_granularity = 0x1000;
 if (dev->io_window_1k) {

  io_mask = PCI_IO_1K_RANGE_MASK;
  io_granularity = 0x400;
 }

 res = child->resource[0];
 pci_read_config_byte(dev, PCI_IO_BASE, &io_base_lo);
 pci_read_config_byte(dev, PCI_IO_LIMIT, &io_limit_lo);
 base = (io_base_lo & io_mask) << 8;
 limit = (io_limit_lo & io_mask) << 8;

 if ((io_base_lo & PCI_IO_RANGE_TYPE_MASK) == PCI_IO_RANGE_TYPE_32) {
  u16 io_base_hi, io_limit_hi;

  pci_read_config_word(dev, PCI_IO_BASE_UPPER16, &io_base_hi);
  pci_read_config_word(dev, PCI_IO_LIMIT_UPPER16, &io_limit_hi);
  base |= ((unsigned long) io_base_hi << 16);
  limit |= ((unsigned long) io_limit_hi << 16);
 }

 if (base <= limit) {
  res->flags = (io_base_lo & PCI_IO_RANGE_TYPE_MASK) | IORESOURCE_IO;
  region.start = base;
  region.end = limit + io_granularity - 1;
  pcibios_bus_to_resource(dev->bus, res, &region);
  pci_info(dev, "  bridge window %pR\n", res);
 }
}
