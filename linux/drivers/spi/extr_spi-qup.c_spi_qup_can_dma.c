
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int len; int bits_per_word; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_qup {int in_blk_sz; int out_blk_sz; int in_fifo_sz; scalar_t__ qup_v1; } ;
struct spi_master {int dma_tx; int dma_rx; } ;
struct spi_device {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int IS_ALIGNED (size_t,size_t) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 size_t dma_get_cache_alignment () ;
 struct spi_qup* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static bool spi_qup_can_dma(struct spi_master *master, struct spi_device *spi,
       struct spi_transfer *xfer)
{
 struct spi_qup *qup = spi_master_get_devdata(master);
 size_t dma_align = dma_get_cache_alignment();
 int n_words;

 if (xfer->rx_buf) {
  if (!IS_ALIGNED((size_t)xfer->rx_buf, dma_align) ||
      IS_ERR_OR_NULL(master->dma_rx))
   return 0;
  if (qup->qup_v1 && (xfer->len % qup->in_blk_sz))
   return 0;
 }

 if (xfer->tx_buf) {
  if (!IS_ALIGNED((size_t)xfer->tx_buf, dma_align) ||
      IS_ERR_OR_NULL(master->dma_tx))
   return 0;
  if (qup->qup_v1 && (xfer->len % qup->out_blk_sz))
   return 0;
 }

 n_words = xfer->len / DIV_ROUND_UP(xfer->bits_per_word, 8);
 if (n_words <= (qup->in_fifo_sz / sizeof(u32)))
  return 0;

 return 1;
}
