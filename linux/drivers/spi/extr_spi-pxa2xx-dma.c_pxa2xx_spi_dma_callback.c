
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pxa2xx_spi_dma_transfer_complete (void*,int) ;

__attribute__((used)) static void pxa2xx_spi_dma_callback(void *data)
{
 pxa2xx_spi_dma_transfer_complete(data, 0);
}
