
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct AdapterControlBlock {scalar_t__ adapter_type; struct pci_dev* pdev; } ;


 scalar_t__ ACB_ADAPTER_TYPE_A ;
 int DMA_BIT_MASK (int) ;
 int ENXIO ;
 scalar_t__ IS_DMA64 ;
 int dma_mask_64 ;
 scalar_t__ dma_set_coherent_mask (int *,int ) ;
 scalar_t__ dma_set_mask (int *,int ) ;
 scalar_t__ dma_set_mask_and_coherent (int *,int ) ;
 int printk (char*) ;

__attribute__((used)) static int arcmsr_set_dma_mask(struct AdapterControlBlock *acb)
{
 struct pci_dev *pcidev = acb->pdev;

 if (IS_DMA64) {
  if (((acb->adapter_type == ACB_ADAPTER_TYPE_A) && !dma_mask_64) ||
      dma_set_mask(&pcidev->dev, DMA_BIT_MASK(64)))
   goto dma32;
  if (dma_set_coherent_mask(&pcidev->dev, DMA_BIT_MASK(64)) ||
      dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(64))) {
   printk("arcmsr: set DMA 64 mask failed\n");
   return -ENXIO;
  }
 } else {
dma32:
  if (dma_set_mask(&pcidev->dev, DMA_BIT_MASK(32)) ||
      dma_set_coherent_mask(&pcidev->dev, DMA_BIT_MASK(32)) ||
      dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(32))) {
   printk("arcmsr: set DMA 32-bit mask failed\n");
   return -ENXIO;
  }
 }
 return 0;
}
