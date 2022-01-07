
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int xfer_completion; int dma_rx; } ;
struct bcm2835_spi {size_t chip_select; int tx_dma_active; int rx_dma_active; int * clear_rx_cs; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_DONE ;
 int bcm2835_rd (struct bcm2835_spi*,int ) ;
 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_spi_undo_prologue (struct bcm2835_spi*) ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int ) ;
 scalar_t__ cmpxchg (int *,int,int) ;
 int complete (int *) ;
 int dmaengine_terminate_async (int ) ;
 int smp_wmb () ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static void bcm2835_spi_dma_tx_done(void *data)
{
 struct spi_controller *ctlr = data;
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);


 while (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_DONE))
  bcm2835_wr(bs, BCM2835_SPI_CS,
      bs->clear_rx_cs[bs->chip_select]);

 bs->tx_dma_active = 0;
 smp_wmb();






 if (cmpxchg(&bs->rx_dma_active, 1, 0))
  dmaengine_terminate_async(ctlr->dma_rx);

 bcm2835_spi_undo_prologue(bs);
 bcm2835_spi_reset_hw(ctlr);
 complete(&ctlr->xfer_completion);
}
