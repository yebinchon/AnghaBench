
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_spi_data {unsigned int curr_dma_words; unsigned int bytes_per_word; int cur_rx_pos; int* rx_dma_buf; unsigned int cur_pos; int dma_buf_size; int rx_dma_phys; int dev; scalar_t__ is_packed; } ;
struct spi_transfer {unsigned char* rx_buf; int bits_per_word; unsigned int len; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int memcpy (unsigned char*,int*,unsigned int) ;

__attribute__((used)) static void tegra_spi_copy_spi_rxbuf_to_client_rxbuf(
  struct tegra_spi_data *tspi, struct spi_transfer *t)
{

 dma_sync_single_for_cpu(tspi->dev, tspi->rx_dma_phys,
  tspi->dma_buf_size, DMA_FROM_DEVICE);

 if (tspi->is_packed) {
  unsigned len = tspi->curr_dma_words * tspi->bytes_per_word;

  memcpy(t->rx_buf + tspi->cur_rx_pos, tspi->rx_dma_buf, len);
  tspi->cur_rx_pos += tspi->curr_dma_words * tspi->bytes_per_word;
 } else {
  unsigned int i;
  unsigned int count;
  unsigned char *rx_buf = t->rx_buf + tspi->cur_rx_pos;
  u32 rx_mask = ((u32)1 << t->bits_per_word) - 1;
  unsigned consume = tspi->curr_dma_words * tspi->bytes_per_word;
  unsigned int read_bytes;

  if (consume > t->len - tspi->cur_pos)
   consume = t->len - tspi->cur_pos;
  read_bytes = consume;
  for (count = 0; count < tspi->curr_dma_words; count++) {
   u32 x = tspi->rx_dma_buf[count] & rx_mask;

   for (i = 0; consume && (i < tspi->bytes_per_word);
       i++, consume--)
    *rx_buf++ = (x >> (i*8)) & 0xFF;
  }

  tspi->cur_rx_pos += read_bytes;
 }


 dma_sync_single_for_device(tspi->dev, tspi->rx_dma_phys,
  tspi->dma_buf_size, DMA_FROM_DEVICE);
}
