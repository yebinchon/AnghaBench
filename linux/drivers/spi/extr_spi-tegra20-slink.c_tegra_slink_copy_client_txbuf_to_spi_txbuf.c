
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct tegra_slink_data {unsigned int curr_dma_words; unsigned int bytes_per_word; unsigned int* tx_dma_buf; int cur_pos; int cur_tx_pos; int dma_buf_size; int tx_dma_phys; int dev; scalar_t__ is_packed; } ;
struct spi_transfer {scalar_t__ tx_buf; } ;


 int DMA_TO_DEVICE ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int memcpy (unsigned int*,scalar_t__,unsigned int) ;

__attribute__((used)) static void tegra_slink_copy_client_txbuf_to_spi_txbuf(
  struct tegra_slink_data *tspi, struct spi_transfer *t)
{

 dma_sync_single_for_cpu(tspi->dev, tspi->tx_dma_phys,
    tspi->dma_buf_size, DMA_TO_DEVICE);

 if (tspi->is_packed) {
  unsigned len = tspi->curr_dma_words * tspi->bytes_per_word;
  memcpy(tspi->tx_dma_buf, t->tx_buf + tspi->cur_pos, len);
 } else {
  unsigned int i;
  unsigned int count;
  u8 *tx_buf = (u8 *)t->tx_buf + tspi->cur_tx_pos;
  unsigned consume = tspi->curr_dma_words * tspi->bytes_per_word;

  for (count = 0; count < tspi->curr_dma_words; count++) {
   u32 x = 0;
   for (i = 0; consume && (i < tspi->bytes_per_word);
       i++, consume--)
    x |= (u32)(*tx_buf++) << (i * 8);
   tspi->tx_dma_buf[count] = x;
  }
 }
 tspi->cur_tx_pos += tspi->curr_dma_words * tspi->bytes_per_word;


 dma_sync_single_for_device(tspi->dev, tspi->tx_dma_phys,
    tspi->dma_buf_size, DMA_TO_DEVICE);
}
