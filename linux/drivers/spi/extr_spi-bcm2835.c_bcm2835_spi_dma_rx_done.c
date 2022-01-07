
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int xfer_completion; int dma_tx; } ;
struct bcm2835_spi {int tx_dma_active; int rx_dma_active; } ;


 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_spi_undo_prologue (struct bcm2835_spi*) ;
 int complete (int *) ;
 int dmaengine_terminate_async (int ) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static void bcm2835_spi_dma_rx_done(void *data)
{
 struct spi_controller *ctlr = data;
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);






 dmaengine_terminate_async(ctlr->dma_tx);
 bs->tx_dma_active = 0;
 bs->rx_dma_active = 0;
 bcm2835_spi_undo_prologue(bs);


 bcm2835_spi_reset_hw(ctlr);

                            ;
 complete(&ctlr->xfer_completion);
}
