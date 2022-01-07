
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_controller {int xfer_completion; } ;
struct bcm2835_spi {int rx_len; scalar_t__ tx_len; } ;
typedef int irqreturn_t ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_DONE ;
 int BCM2835_SPI_CS_RXF ;
 int BCM2835_SPI_CS_RXR ;
 int BCM2835_SPI_FIFO_SIZE ;
 int BCM2835_SPI_FIFO_SIZE_3_4 ;
 int IRQ_HANDLED ;
 int bcm2835_rd (struct bcm2835_spi*,int ) ;
 int bcm2835_rd_fifo (struct bcm2835_spi*) ;
 int bcm2835_rd_fifo_blind (struct bcm2835_spi*,int ) ;
 int bcm2835_spi_reset_hw (struct spi_controller*) ;
 int bcm2835_wr_fifo (struct bcm2835_spi*) ;
 int bcm2835_wr_fifo_blind (struct bcm2835_spi*,int ) ;
 int complete (int *) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
{
 struct spi_controller *ctlr = dev_id;
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);





 if (cs & BCM2835_SPI_CS_RXF)
  bcm2835_rd_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);
 else if (cs & BCM2835_SPI_CS_RXR)
  bcm2835_rd_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE_3_4);

 if (bs->tx_len && cs & BCM2835_SPI_CS_DONE)
  bcm2835_wr_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);


 bcm2835_rd_fifo(bs);

 bcm2835_wr_fifo(bs);

 if (!bs->rx_len) {

  bcm2835_spi_reset_hw(ctlr);

  complete(&ctlr->xfer_completion);
 }

 return IRQ_HANDLED;
}
