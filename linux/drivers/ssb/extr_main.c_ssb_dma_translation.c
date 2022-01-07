
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int bustype; int host_pci; } ;




 int SSB_PCIE_DMA_H32 ;
 int SSB_PCI_DMA ;
 int SSB_TMSHIGH ;
 int SSB_TMSHIGH_DMA64 ;
 int __ssb_dma_not_implemented (struct ssb_device*) ;
 int pci_is_pcie (int ) ;
 int ssb_dma_translation_special_bit (struct ssb_device*) ;
 int ssb_read32 (struct ssb_device*,int ) ;

u32 ssb_dma_translation(struct ssb_device *dev)
{
 switch (dev->bus->bustype) {
 case 128:
  return 0;
 case 129:
  if (pci_is_pcie(dev->bus->host_pci) &&
      ssb_read32(dev, SSB_TMSHIGH) & SSB_TMSHIGH_DMA64) {
   return SSB_PCIE_DMA_H32;
  } else {
   if (ssb_dma_translation_special_bit(dev))
    return SSB_PCIE_DMA_H32;
   else
    return SSB_PCI_DMA;
  }
 default:
  __ssb_dma_not_implemented(dev);
 }
 return 0;
}
