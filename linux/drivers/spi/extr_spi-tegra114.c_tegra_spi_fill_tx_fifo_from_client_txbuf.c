
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct tegra_spi_data {int cur_tx_pos; unsigned int words_per_32bit; unsigned int curr_dma_words; unsigned int bytes_per_word; unsigned int cur_pos; scalar_t__ is_packed; } ;
struct spi_transfer {unsigned int len; scalar_t__ tx_buf; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int SPI_FIFO_STATUS ;
 int SPI_TX_FIFO ;
 unsigned int SPI_TX_FIFO_EMPTY_COUNT (unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int tegra_spi_readl (struct tegra_spi_data*,int ) ;
 int tegra_spi_writel (struct tegra_spi_data*,unsigned int,int ) ;

__attribute__((used)) static unsigned tegra_spi_fill_tx_fifo_from_client_txbuf(
 struct tegra_spi_data *tspi, struct spi_transfer *t)
{
 unsigned nbytes;
 unsigned tx_empty_count;
 u32 fifo_status;
 unsigned max_n_32bit;
 unsigned i, count;
 unsigned int written_words;
 unsigned fifo_words_left;
 u8 *tx_buf = (u8 *)t->tx_buf + tspi->cur_tx_pos;

 fifo_status = tegra_spi_readl(tspi, SPI_FIFO_STATUS);
 tx_empty_count = SPI_TX_FIFO_EMPTY_COUNT(fifo_status);

 if (tspi->is_packed) {
  fifo_words_left = tx_empty_count * tspi->words_per_32bit;
  written_words = min(fifo_words_left, tspi->curr_dma_words);
  nbytes = written_words * tspi->bytes_per_word;
  max_n_32bit = DIV_ROUND_UP(nbytes, 4);
  for (count = 0; count < max_n_32bit; count++) {
   u32 x = 0;

   for (i = 0; (i < 4) && nbytes; i++, nbytes--)
    x |= (u32)(*tx_buf++) << (i * 8);
   tegra_spi_writel(tspi, x, SPI_TX_FIFO);
  }

  tspi->cur_tx_pos += written_words * tspi->bytes_per_word;
 } else {
  unsigned int write_bytes;
  max_n_32bit = min(tspi->curr_dma_words, tx_empty_count);
  written_words = max_n_32bit;
  nbytes = written_words * tspi->bytes_per_word;
  if (nbytes > t->len - tspi->cur_pos)
   nbytes = t->len - tspi->cur_pos;
  write_bytes = nbytes;
  for (count = 0; count < max_n_32bit; count++) {
   u32 x = 0;

   for (i = 0; nbytes && (i < tspi->bytes_per_word);
       i++, nbytes--)
    x |= (u32)(*tx_buf++) << (i * 8);
   tegra_spi_writel(tspi, x, SPI_TX_FIFO);
  }

  tspi->cur_tx_pos += write_bytes;
 }

 return written_words;
}
