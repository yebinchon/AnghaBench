
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tiny_spi {scalar_t__ irq; int len; scalar_t__ base; int done; scalar_t__ txc; int * txp; scalar_t__ rxc; int * rxp; } ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_device {int dummy; } ;


 scalar_t__ TINY_SPI_RXDATA ;
 scalar_t__ TINY_SPI_STATUS ;
 int TINY_SPI_STATUS_TXE ;
 int TINY_SPI_STATUS_TXR ;
 scalar_t__ TINY_SPI_TXDATA ;
 void* readb (scalar_t__) ;
 struct tiny_spi* tiny_spi_to_hw (struct spi_device*) ;
 int tiny_spi_wait_txe (struct tiny_spi*) ;
 int tiny_spi_wait_txr (struct tiny_spi*) ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int tiny_spi_txrx_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct tiny_spi *hw = tiny_spi_to_hw(spi);
 const u8 *txp = t->tx_buf;
 u8 *rxp = t->rx_buf;
 unsigned int i;

 if (hw->irq >= 0) {

  hw->len = t->len;
  hw->txp = t->tx_buf;
  hw->rxp = t->rx_buf;
  hw->txc = 0;
  hw->rxc = 0;


  if (t->len > 1) {
   writeb(hw->txp ? *hw->txp++ : 0,
          hw->base + TINY_SPI_TXDATA);
   hw->txc++;
   writeb(hw->txp ? *hw->txp++ : 0,
          hw->base + TINY_SPI_TXDATA);
   hw->txc++;
   writeb(TINY_SPI_STATUS_TXR, hw->base + TINY_SPI_STATUS);
  } else {
   writeb(hw->txp ? *hw->txp++ : 0,
          hw->base + TINY_SPI_TXDATA);
   hw->txc++;
   writeb(TINY_SPI_STATUS_TXE, hw->base + TINY_SPI_STATUS);
  }

  wait_for_completion(&hw->done);
 } else {

  writeb(txp ? *txp++ : 0, hw->base + TINY_SPI_TXDATA);
  for (i = 1; i < t->len; i++) {
   writeb(txp ? *txp++ : 0, hw->base + TINY_SPI_TXDATA);

   if (rxp || (i != t->len - 1))
    tiny_spi_wait_txr(hw);
   if (rxp)
    *rxp++ = readb(hw->base + TINY_SPI_TXDATA);
  }
  tiny_spi_wait_txe(hw);
  if (rxp)
   *rxp++ = readb(hw->base + TINY_SPI_RXDATA);
 }

 return t->len;
}
