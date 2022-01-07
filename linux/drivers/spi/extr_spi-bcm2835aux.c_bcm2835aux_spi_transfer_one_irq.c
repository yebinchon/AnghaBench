
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct bcm2835aux_spi {int pending; scalar_t__ tx_len; int * cntl; int count_transfer_irq; } ;


 int BCM2835_AUX_SPI_CNTL0 ;
 int BCM2835_AUX_SPI_CNTL1 ;
 int BCM2835_AUX_SPI_STAT ;
 int BCM2835_AUX_SPI_STAT_TX_FULL ;
 int __bcm2835aux_spi_transfer_one_irq (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int bcm2835aux_rd (struct bcm2835aux_spi*,int ) ;
 int bcm2835aux_wr (struct bcm2835aux_spi*,int ,int ) ;
 int bcm2835aux_wr_fifo (struct bcm2835aux_spi*) ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int bcm2835aux_spi_transfer_one_irq(struct spi_master *master,
        struct spi_device *spi,
        struct spi_transfer *tfr)
{
 struct bcm2835aux_spi *bs = spi_master_get_devdata(master);


 bs->count_transfer_irq++;


 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1]);
 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL0, bs->cntl[0]);


 while ((bs->tx_len) &&
        (bs->pending < 12) &&
        (!(bcm2835aux_rd(bs, BCM2835_AUX_SPI_STAT) &
    BCM2835_AUX_SPI_STAT_TX_FULL))) {
  bcm2835aux_wr_fifo(bs);
 }


 return __bcm2835aux_spi_transfer_one_irq(master, spi, tfr);
}
