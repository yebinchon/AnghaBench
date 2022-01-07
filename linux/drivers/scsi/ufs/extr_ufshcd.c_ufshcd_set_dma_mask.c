
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int capabilities; int dev; } ;


 int DMA_BIT_MASK (int) ;
 int MASK_64_ADDRESSING_SUPPORT ;
 int dma_set_mask_and_coherent (int ,int ) ;

__attribute__((used)) static int ufshcd_set_dma_mask(struct ufs_hba *hba)
{
 if (hba->capabilities & MASK_64_ADDRESSING_SUPPORT) {
  if (!dma_set_mask_and_coherent(hba->dev, DMA_BIT_MASK(64)))
   return 0;
 }
 return dma_set_mask_and_coherent(hba->dev, DMA_BIT_MASK(32));
}
