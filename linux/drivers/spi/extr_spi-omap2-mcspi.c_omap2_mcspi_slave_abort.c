
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct omap2_mcspi_dma {int dma_tx_completion; int dma_rx_completion; } ;
struct omap2_mcspi {int slave_aborted; int txdone; struct omap2_mcspi_dma* dma_channels; } ;


 int complete (int *) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int omap2_mcspi_slave_abort(struct spi_master *master)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);
 struct omap2_mcspi_dma *mcspi_dma = mcspi->dma_channels;

 mcspi->slave_aborted = 1;
 complete(&mcspi_dma->dma_rx_completion);
 complete(&mcspi_dma->dma_tx_completion);
 complete(&mcspi->txdone);

 return 0;
}
