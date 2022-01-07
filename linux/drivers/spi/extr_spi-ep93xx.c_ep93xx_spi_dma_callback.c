
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ep93xx_spi_dma_finish (struct spi_master*,int ) ;
 int spi_finalize_current_transfer (struct spi_master*) ;

__attribute__((used)) static void ep93xx_spi_dma_callback(void *callback_param)
{
 struct spi_master *master = callback_param;

 ep93xx_spi_dma_finish(master, DMA_TO_DEVICE);
 ep93xx_spi_dma_finish(master, DMA_FROM_DEVICE);

 spi_finalize_current_transfer(master);
}
