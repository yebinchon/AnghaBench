
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_master {int * dma_tx; int * dma_rx; } ;
struct TYPE_2__ {struct spi_master* master; } ;
struct spi_imx_data {TYPE_1__ bitbang; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void spi_imx_sdma_exit(struct spi_imx_data *spi_imx)
{
 struct spi_master *master = spi_imx->bitbang.master;

 if (master->dma_rx) {
  dma_release_channel(master->dma_rx);
  master->dma_rx = ((void*)0);
 }

 if (master->dma_tx) {
  dma_release_channel(master->dma_tx);
  master->dma_tx = ((void*)0);
 }
}
