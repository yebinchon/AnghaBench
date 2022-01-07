
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_DEV_TO_MEM ;

 int DMA_MEM_TO_DEV ;

 int DMA_TRANS_NONE ;

__attribute__((used)) static enum dma_transfer_direction
ep93xx_dma_data_to_trans_dir(enum dma_data_direction dir)
{
 switch (dir) {
 case 128:
  return DMA_MEM_TO_DEV;
 case 129:
  return DMA_DEV_TO_MEM;
 default:
  return DMA_TRANS_NONE;
 }
}
