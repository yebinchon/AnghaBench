
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct bcm2835aux_spi {int* cntl; } ;


 int BCM2835_AUX_SPI_CNTL1 ;
 int BCM2835_AUX_SPI_CNTL1_IDLE ;
 int BCM2835_AUX_SPI_CNTL1_TXEMPTY ;
 int bcm2835aux_wr (struct bcm2835aux_spi*,int ,int) ;
 struct bcm2835aux_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int __bcm2835aux_spi_transfer_one_irq(struct spi_master *master,
          struct spi_device *spi,
          struct spi_transfer *tfr)
{
 struct bcm2835aux_spi *bs = spi_master_get_devdata(master);


 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, bs->cntl[1] |
  BCM2835_AUX_SPI_CNTL1_TXEMPTY |
  BCM2835_AUX_SPI_CNTL1_IDLE);


 return 1;
}
