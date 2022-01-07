
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* dma_chan; } ;
struct sprd_spi {TYPE_1__ dma; } ;


 size_t SPRD_SPI_RX ;
 size_t SPRD_SPI_TX ;
 int dma_release_channel (scalar_t__) ;

__attribute__((used)) static void sprd_spi_dma_release(struct sprd_spi *ss)
{
 if (ss->dma.dma_chan[SPRD_SPI_RX])
  dma_release_channel(ss->dma.dma_chan[SPRD_SPI_RX]);

 if (ss->dma.dma_chan[SPRD_SPI_TX])
  dma_release_channel(ss->dma.dma_chan[SPRD_SPI_TX]);
}
