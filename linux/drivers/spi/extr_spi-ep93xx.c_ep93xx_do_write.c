
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct spi_transfer {int bits_per_word; scalar_t__ tx_buf; } ;
struct spi_master {TYPE_1__* cur_msg; } ;
struct ep93xx_spi {size_t tx; scalar_t__ mmio; } ;
struct TYPE_2__ {struct spi_transfer* state; } ;


 scalar_t__ SSPDR ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ep93xx_do_write(struct spi_master *master)
{
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 struct spi_transfer *xfer = master->cur_msg->state;
 u32 val = 0;

 if (xfer->bits_per_word > 8) {
  if (xfer->tx_buf)
   val = ((u16 *)xfer->tx_buf)[espi->tx];
  espi->tx += 2;
 } else {
  if (xfer->tx_buf)
   val = ((u8 *)xfer->tx_buf)[espi->tx];
  espi->tx += 1;
 }
 writel(val, espi->mmio + SSPDR);
}
