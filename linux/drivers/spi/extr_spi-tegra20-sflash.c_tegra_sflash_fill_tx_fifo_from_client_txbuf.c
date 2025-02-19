
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_sflash_data {unsigned int curr_xfer_words; int cur_tx_pos; unsigned int bytes_per_word; } ;
struct spi_transfer {scalar_t__ tx_buf; } ;


 unsigned int SPI_FIFO_DEPTH ;
 int SPI_STATUS ;
 int SPI_TXF_FULL ;
 int SPI_TX_FIFO ;
 int tegra_sflash_readl (struct tegra_sflash_data*,int ) ;
 int tegra_sflash_writel (struct tegra_sflash_data*,int,int ) ;

__attribute__((used)) static unsigned tegra_sflash_fill_tx_fifo_from_client_txbuf(
 struct tegra_sflash_data *tsd, struct spi_transfer *t)
{
 unsigned nbytes;
 u32 status;
 unsigned max_n_32bit = tsd->curr_xfer_words;
 u8 *tx_buf = (u8 *)t->tx_buf + tsd->cur_tx_pos;

 if (max_n_32bit > SPI_FIFO_DEPTH)
  max_n_32bit = SPI_FIFO_DEPTH;
 nbytes = max_n_32bit * tsd->bytes_per_word;

 status = tegra_sflash_readl(tsd, SPI_STATUS);
 while (!(status & SPI_TXF_FULL)) {
  int i;
  u32 x = 0;

  for (i = 0; nbytes && (i < tsd->bytes_per_word);
       i++, nbytes--)
   x |= (u32)(*tx_buf++) << (i * 8);
  tegra_sflash_writel(tsd, x, SPI_TX_FIFO);
  if (!nbytes)
   break;

  status = tegra_sflash_readl(tsd, SPI_STATUS);
 }
 tsd->cur_tx_pos += max_n_32bit * tsd->bytes_per_word;
 return max_n_32bit;
}
