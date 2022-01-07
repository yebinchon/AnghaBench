
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dev; } ;
struct ep93xx_spi {int dma_tx; int dma_rx; } ;
struct dma_async_tx_descriptor {struct spi_master* callback_param; int callback; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ IS_ERR (struct dma_async_tx_descriptor*) ;
 int PTR_ERR (struct dma_async_tx_descriptor*) ;
 int dev_err (int *,char*,int) ;
 int dma_async_issue_pending (int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int ep93xx_spi_dma_callback ;
 int ep93xx_spi_dma_finish (struct spi_master*,int ) ;
 struct dma_async_tx_descriptor* ep93xx_spi_dma_prepare (struct spi_master*,int ) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int ep93xx_spi_dma_transfer(struct spi_master *master)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 struct dma_async_tx_descriptor *rxd, *txd;

 rxd = ep93xx_spi_dma_prepare(master, DMA_FROM_DEVICE);
 if (IS_ERR(rxd)) {
  dev_err(&master->dev, "DMA RX failed: %ld\n", PTR_ERR(rxd));
  return PTR_ERR(rxd);
 }

 txd = ep93xx_spi_dma_prepare(master, DMA_TO_DEVICE);
 if (IS_ERR(txd)) {
  ep93xx_spi_dma_finish(master, DMA_FROM_DEVICE);
  dev_err(&master->dev, "DMA TX failed: %ld\n", PTR_ERR(txd));
  return PTR_ERR(txd);
 }


 rxd->callback = ep93xx_spi_dma_callback;
 rxd->callback_param = master;


 dmaengine_submit(rxd);
 dmaengine_submit(txd);

 dma_async_issue_pending(espi->dma_rx);
 dma_async_issue_pending(espi->dma_tx);


 return 1;
}
