
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_controller {int dummy; } ;
struct bcm2835_spi {int dummy; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_CLEAR_RX ;
 int BCM2835_SPI_CS_CLEAR_TX ;
 int BCM2835_SPI_CS_DMAEN ;
 int BCM2835_SPI_CS_DONE ;
 int BCM2835_SPI_CS_INTD ;
 int BCM2835_SPI_CS_INTR ;
 int BCM2835_SPI_CS_TA ;
 int BCM2835_SPI_DLEN ;
 int bcm2835_rd (struct bcm2835_spi*,int ) ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static void bcm2835_spi_reset_hw(struct spi_controller *ctlr)
{
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);


 cs &= ~(BCM2835_SPI_CS_INTR |
  BCM2835_SPI_CS_INTD |
  BCM2835_SPI_CS_DMAEN |
  BCM2835_SPI_CS_TA);






 cs |= BCM2835_SPI_CS_DONE;

 cs |= BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX;


 bcm2835_wr(bs, BCM2835_SPI_CS, cs);

 bcm2835_wr(bs, BCM2835_SPI_DLEN, 0);
}
