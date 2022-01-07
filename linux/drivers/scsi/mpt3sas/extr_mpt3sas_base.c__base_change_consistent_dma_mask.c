
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct MPT3SAS_ADAPTER {int dma_mask; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int
_base_change_consistent_dma_mask(struct MPT3SAS_ADAPTER *ioc,
          struct pci_dev *pdev)
{
 if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(ioc->dma_mask))) {
  if (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)))
   return -ENODEV;
 }
 return 0;
}
