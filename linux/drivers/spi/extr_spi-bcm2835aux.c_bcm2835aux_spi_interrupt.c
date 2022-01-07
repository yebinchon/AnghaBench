
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int xfer_completion; } ;
struct bcm2835aux_spi {int* cntl; int rx_len; int tx_len; } ;
typedef int irqreturn_t ;


 int BCM2835_AUX_SPI_CNTL1 ;
 int BCM2835_AUX_SPI_CNTL1_IDLE ;
 int BCM2835_AUX_SPI_CNTL1_TXEMPTY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bcm2835aux_rd (struct bcm2835aux_spi*,int ) ;
 int bcm2835aux_spi_transfer_helper (struct bcm2835aux_spi*) ;
 int bcm2835aux_wr (struct bcm2835aux_spi*,int ,int) ;
 int complete (int *) ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static irqreturn_t bcm2835aux_spi_interrupt(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct bcm2835aux_spi *bs = spi_master_get_devdata(master);


 if (!(bcm2835aux_rd(bs, BCM2835_AUX_SPI_CNTL1) &
       (BCM2835_AUX_SPI_CNTL1_TXEMPTY | BCM2835_AUX_SPI_CNTL1_IDLE)))
  return IRQ_NONE;


 bcm2835aux_spi_transfer_helper(bs);

 if (!bs->tx_len) {

  bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1] |
   BCM2835_AUX_SPI_CNTL1_IDLE);
 }


 if (!bs->rx_len) {
  bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
  complete(&master->xfer_completion);
 }

 return IRQ_HANDLED;
}
