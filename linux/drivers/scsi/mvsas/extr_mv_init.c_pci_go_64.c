
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;

__attribute__((used)) static int pci_go_64(struct pci_dev *pdev)
{
 int rc;

 rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (rc) {
  rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
  if (rc) {
   dev_printk(KERN_ERR, &pdev->dev,
       "32-bit DMA enable failed\n");
   return rc;
  }
 }

 return rc;
}
