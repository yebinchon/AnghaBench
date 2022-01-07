
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int dummy; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct bcm2835_spi {int count_transfer_irq; } ;


 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_INTD ;
 int BCM2835_SPI_CS_INTR ;
 int BCM2835_SPI_CS_TA ;
 int BCM2835_SPI_FIFO_SIZE ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 int bcm2835_wr_fifo (struct bcm2835_spi*) ;
 int bcm2835_wr_fifo_blind (struct bcm2835_spi*,int ) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int bcm2835_spi_transfer_one_irq(struct spi_controller *ctlr,
     struct spi_device *spi,
     struct spi_transfer *tfr,
     u32 cs, bool fifo_empty)
{
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);


 bs->count_transfer_irq++;





 bcm2835_wr(bs, BCM2835_SPI_CS, cs | BCM2835_SPI_CS_TA);


 if (fifo_empty)
  bcm2835_wr_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);
 bcm2835_wr_fifo(bs);


 cs |= BCM2835_SPI_CS_INTR | BCM2835_SPI_CS_INTD | BCM2835_SPI_CS_TA;
 bcm2835_wr(bs, BCM2835_SPI_CS, cs);


 return 1;
}
