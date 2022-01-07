
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IS_DMA64 ;
 int dma_set_mask (int *,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int mvumi_pci_set_master(struct pci_dev *pdev)
{
 int ret = 0;

 pci_set_master(pdev);

 if (IS_DMA64) {
  if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)))
   ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
 } else
  ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));

 return ret;
}
