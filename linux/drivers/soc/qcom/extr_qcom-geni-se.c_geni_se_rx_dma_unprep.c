
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_wrapper {int dev; } ;
struct geni_se {struct geni_wrapper* wrapper; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,size_t,int ) ;

void geni_se_rx_dma_unprep(struct geni_se *se, dma_addr_t iova, size_t len)
{
 struct geni_wrapper *wrapper = se->wrapper;

 if (iova && !dma_mapping_error(wrapper->dev, iova))
  dma_unmap_single(wrapper->dev, iova, len, DMA_FROM_DEVICE);
}
