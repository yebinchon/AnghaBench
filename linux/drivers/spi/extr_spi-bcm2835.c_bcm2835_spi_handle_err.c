
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_controller {int dma_rx; int dma_tx; } ;
struct bcm2835_spi {int tx_dma_active; int rx_dma_active; } ;


 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_spi_undo_prologue (struct bcm2835_spi*) ;
 int dmaengine_terminate_sync (int ) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static void bcm2835_spi_handle_err(struct spi_controller *ctlr,
       struct spi_message *msg)
{
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);


 dmaengine_terminate_sync(ctlr->dma_tx);
 bs->tx_dma_active = 0;
 dmaengine_terminate_sync(ctlr->dma_rx);
 bs->rx_dma_active = 0;
 bcm2835_spi_undo_prologue(bs);


 bcm2835_spi_reset_hw(ctlr);
}
