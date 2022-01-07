
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {scalar_t__ len; } ;
struct spi_master {TYPE_1__* cur_msg; } ;
struct ep93xx_spi {scalar_t__ fifo_level; scalar_t__ tx; scalar_t__ rx; scalar_t__ mmio; } ;
struct TYPE_2__ {struct spi_transfer* state; } ;


 int EINPROGRESS ;
 scalar_t__ SPI_FIFO_SIZE ;
 scalar_t__ SSPSR ;
 int SSPSR_RNE ;
 int ep93xx_do_read (struct spi_master*) ;
 int ep93xx_do_write (struct spi_master*) ;
 int readl (scalar_t__) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int ep93xx_spi_read_write(struct spi_master *master)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 struct spi_transfer *xfer = master->cur_msg->state;


 while ((readl(espi->mmio + SSPSR) & SSPSR_RNE)) {
  ep93xx_do_read(master);
  espi->fifo_level--;
 }


 while (espi->fifo_level < SPI_FIFO_SIZE && espi->tx < xfer->len) {
  ep93xx_do_write(master);
  espi->fifo_level++;
 }

 if (espi->rx == xfer->len)
  return 0;

 return -EINPROGRESS;
}
