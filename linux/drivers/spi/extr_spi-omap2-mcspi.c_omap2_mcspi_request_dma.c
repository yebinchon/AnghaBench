
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dev; } ;
struct spi_device {int chip_select; struct spi_master* master; } ;
struct omap2_mcspi_dma {int * dma_rx; int * dma_tx; int dma_tx_ch_name; int dma_rx_ch_name; int dma_tx_completion; int dma_rx_completion; } ;
struct omap2_mcspi {struct omap2_mcspi_dma* dma_channels; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dma_release_channel (int *) ;
 void* dma_request_chan (int *,int ) ;
 int init_completion (int *) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int omap2_mcspi_request_dma(struct spi_device *spi)
{
 struct spi_master *master = spi->master;
 struct omap2_mcspi *mcspi;
 struct omap2_mcspi_dma *mcspi_dma;
 int ret = 0;

 mcspi = spi_master_get_devdata(master);
 mcspi_dma = mcspi->dma_channels + spi->chip_select;

 init_completion(&mcspi_dma->dma_rx_completion);
 init_completion(&mcspi_dma->dma_tx_completion);

 mcspi_dma->dma_rx = dma_request_chan(&master->dev,
          mcspi_dma->dma_rx_ch_name);
 if (IS_ERR(mcspi_dma->dma_rx)) {
  ret = PTR_ERR(mcspi_dma->dma_rx);
  mcspi_dma->dma_rx = ((void*)0);
  goto no_dma;
 }

 mcspi_dma->dma_tx = dma_request_chan(&master->dev,
          mcspi_dma->dma_tx_ch_name);
 if (IS_ERR(mcspi_dma->dma_tx)) {
  ret = PTR_ERR(mcspi_dma->dma_tx);
  mcspi_dma->dma_tx = ((void*)0);
  dma_release_channel(mcspi_dma->dma_rx);
  mcspi_dma->dma_rx = ((void*)0);
 }

no_dma:
 return ret;
}
