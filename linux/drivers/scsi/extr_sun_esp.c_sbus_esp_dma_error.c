
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esp {int dummy; } ;


 int DMA_CSR ;
 int DMA_HNDL_ERROR ;
 int dma_read32 (int ) ;

__attribute__((used)) static int sbus_esp_dma_error(struct esp *esp)
{
 u32 csr = dma_read32(DMA_CSR);

 if (csr & DMA_HNDL_ERROR)
  return 1;

 return 0;
}
