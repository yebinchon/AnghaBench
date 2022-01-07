
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PCI_EA_BEI ;
 unsigned long IORESOURCE_PCI_FIXED ;
 unsigned long IORESOURCE_PREFETCH ;






__attribute__((used)) static unsigned long pci_ea_flags(struct pci_dev *dev, u8 prop)
{
 unsigned long flags = IORESOURCE_PCI_FIXED | IORESOURCE_PCI_EA_BEI;

 switch (prop) {
 case 131:
 case 129:
  flags |= IORESOURCE_MEM;
  break;
 case 130:
 case 128:
  flags |= IORESOURCE_MEM | IORESOURCE_PREFETCH;
  break;
 case 132:
  flags |= IORESOURCE_IO;
  break;
 default:
  return 0;
 }

 return flags;
}
