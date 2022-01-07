
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;






 int UIS_DMA_BIDIRECTIONAL ;
 int UIS_DMA_FROM_DEVICE ;
 int UIS_DMA_NONE ;
 int UIS_DMA_TO_DEVICE ;

__attribute__((used)) static u32 dma_data_dir_linux_to_spar(enum dma_data_direction d)
{
 switch (d) {
 case 131:
  return UIS_DMA_BIDIRECTIONAL;
 case 128:
  return UIS_DMA_TO_DEVICE;
 case 130:
  return UIS_DMA_FROM_DEVICE;
 case 129:
  return UIS_DMA_NONE;
 default:
  return UIS_DMA_NONE;
 }
}
