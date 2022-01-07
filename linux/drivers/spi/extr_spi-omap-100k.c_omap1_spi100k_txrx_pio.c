
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef void* u16 ;
struct spi_transfer {unsigned int len; void** rx_buf; void** tx_buf; } ;
struct spi_device {int master; struct omap1_spi100k_cs* controller_state; } ;
struct omap1_spi100k_cs {int word_len; } ;


 void* spi100k_read_data (int ,int) ;
 int spi100k_write_data (int ,int,void* const) ;

__attribute__((used)) static unsigned
omap1_spi100k_txrx_pio(struct spi_device *spi, struct spi_transfer *xfer)
{
 struct omap1_spi100k_cs *cs = spi->controller_state;
 unsigned int count, c;
 int word_len;

 count = xfer->len;
 c = count;
 word_len = cs->word_len;

 if (word_len <= 8) {
  u8 *rx;
  const u8 *tx;

  rx = xfer->rx_buf;
  tx = xfer->tx_buf;
  do {
   c -= 1;
   if (xfer->tx_buf != ((void*)0))
    spi100k_write_data(spi->master, word_len, *tx++);
   if (xfer->rx_buf != ((void*)0))
    *rx++ = spi100k_read_data(spi->master, word_len);
  } while (c);
 } else if (word_len <= 16) {
  u16 *rx;
  const u16 *tx;

  rx = xfer->rx_buf;
  tx = xfer->tx_buf;
  do {
   c -= 2;
   if (xfer->tx_buf != ((void*)0))
    spi100k_write_data(spi->master, word_len, *tx++);
   if (xfer->rx_buf != ((void*)0))
    *rx++ = spi100k_read_data(spi->master, word_len);
  } while (c);
 } else if (word_len <= 32) {
  u32 *rx;
  const u32 *tx;

  rx = xfer->rx_buf;
  tx = xfer->tx_buf;
  do {
   c -= 4;
   if (xfer->tx_buf != ((void*)0))
    spi100k_write_data(spi->master, word_len, *tx);
   if (xfer->rx_buf != ((void*)0))
    *rx = spi100k_read_data(spi->master, word_len);
  } while (c);
 }
 return count - c;
}
