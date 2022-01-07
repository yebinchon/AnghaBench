
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sflash_data {unsigned int cur_pos; unsigned int bytes_per_word; unsigned int curr_xfer_words; } ;
struct spi_transfer {unsigned int len; int bits_per_word; } ;
struct spi_device {int dummy; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 unsigned int SPI_FIFO_DEPTH ;

__attribute__((used)) static unsigned tegra_sflash_calculate_curr_xfer_param(
 struct spi_device *spi, struct tegra_sflash_data *tsd,
 struct spi_transfer *t)
{
 unsigned remain_len = t->len - tsd->cur_pos;
 unsigned max_word;

 tsd->bytes_per_word = DIV_ROUND_UP(t->bits_per_word, 8);
 max_word = remain_len / tsd->bytes_per_word;
 if (max_word > SPI_FIFO_DEPTH)
  max_word = SPI_FIFO_DEPTH;
 tsd->curr_xfer_words = max_word;
 return max_word;
}
