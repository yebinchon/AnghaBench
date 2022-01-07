
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; struct resource* resource; scalar_t__ is_virtfn; scalar_t__ non_compliant_bars; } ;


 int IORESOURCE_MEM ;
 int IORESOURCE_PREFETCH ;
 int IORESOURCE_READONLY ;
 int IORESOURCE_SIZEALIGN ;
 unsigned int PCI_BASE_ADDRESS_0 ;
 size_t PCI_ROM_RESOURCE ;
 scalar_t__ __pci_read_base (struct pci_dev*,int ,struct resource*,int) ;
 int pci_bar_mem32 ;
 int pci_bar_unknown ;

__attribute__((used)) static void pci_read_bases(struct pci_dev *dev, unsigned int howmany, int rom)
{
 unsigned int pos, reg;

 if (dev->non_compliant_bars)
  return;


 if (dev->is_virtfn)
  return;

 for (pos = 0; pos < howmany; pos++) {
  struct resource *res = &dev->resource[pos];
  reg = PCI_BASE_ADDRESS_0 + (pos << 2);
  pos += __pci_read_base(dev, pci_bar_unknown, res, reg);
 }

 if (rom) {
  struct resource *res = &dev->resource[PCI_ROM_RESOURCE];
  dev->rom_base_reg = rom;
  res->flags = IORESOURCE_MEM | IORESOURCE_PREFETCH |
    IORESOURCE_READONLY | IORESOURCE_SIZEALIGN;
  __pci_read_base(dev, pci_bar_mem32, res, rom);
 }
}
