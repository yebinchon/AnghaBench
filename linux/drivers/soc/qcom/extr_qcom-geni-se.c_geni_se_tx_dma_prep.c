
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct geni_wrapper {int dev; } ;
struct geni_se {scalar_t__ base; struct geni_wrapper* wrapper; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int EIO ;
 size_t GENI_SE_DMA_AHB_ERR_EN ;
 size_t GENI_SE_DMA_DONE_EN ;
 size_t GENI_SE_DMA_EOT_BUF ;
 size_t GENI_SE_DMA_EOT_EN ;
 scalar_t__ SE_DMA_TX_ATTR ;
 scalar_t__ SE_DMA_TX_IRQ_EN_SET ;
 scalar_t__ SE_DMA_TX_LEN ;
 scalar_t__ SE_DMA_TX_PTR_H ;
 scalar_t__ SE_DMA_TX_PTR_L ;
 int dma_map_single (int ,void*,size_t,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 size_t lower_32_bits (int ) ;
 size_t upper_32_bits (int ) ;
 int writel_relaxed (size_t,scalar_t__) ;

int geni_se_tx_dma_prep(struct geni_se *se, void *buf, size_t len,
   dma_addr_t *iova)
{
 struct geni_wrapper *wrapper = se->wrapper;
 u32 val;

 if (!wrapper)
  return -EINVAL;

 *iova = dma_map_single(wrapper->dev, buf, len, DMA_TO_DEVICE);
 if (dma_mapping_error(wrapper->dev, *iova))
  return -EIO;

 val = GENI_SE_DMA_DONE_EN;
 val |= GENI_SE_DMA_EOT_EN;
 val |= GENI_SE_DMA_AHB_ERR_EN;
 writel_relaxed(val, se->base + SE_DMA_TX_IRQ_EN_SET);
 writel_relaxed(lower_32_bits(*iova), se->base + SE_DMA_TX_PTR_L);
 writel_relaxed(upper_32_bits(*iova), se->base + SE_DMA_TX_PTR_H);
 writel_relaxed(GENI_SE_DMA_EOT_BUF, se->base + SE_DMA_TX_ATTR);
 writel_relaxed(len, se->base + SE_DMA_TX_LEN);
 return 0;
}
