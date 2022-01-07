
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835aux_spi {int dummy; } ;


 int BCM2835_AUX_SPI_CNTL0 ;
 int BCM2835_AUX_SPI_CNTL0_CLEARFIFO ;
 int BCM2835_AUX_SPI_CNTL1 ;
 int bcm2835aux_wr (struct bcm2835aux_spi*,int ,int ) ;

__attribute__((used)) static void bcm2835aux_spi_reset_hw(struct bcm2835aux_spi *bs)
{

 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL1, 0);
 bcm2835aux_wr(bs, BCM2835_AUX_SPI_CNTL0,
        BCM2835_AUX_SPI_CNTL0_CLEARFIFO);
}
