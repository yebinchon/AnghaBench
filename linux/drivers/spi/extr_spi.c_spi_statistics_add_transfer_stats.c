
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ tx_buf; scalar_t__ rx_buf; scalar_t__ len; } ;
struct spi_statistics {int lock; int bytes_rx; int bytes_tx; int bytes; int * transfer_bytes_histo; int transfers; } ;
struct spi_controller {scalar_t__ dummy_tx; scalar_t__ dummy_rx; } ;


 int SPI_STATISTICS_HISTO_SIZE ;
 int fls (scalar_t__) ;
 int min (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
           struct spi_transfer *xfer,
           struct spi_controller *ctlr)
{
 unsigned long flags;
 int l2len = min(fls(xfer->len), SPI_STATISTICS_HISTO_SIZE) - 1;

 if (l2len < 0)
  l2len = 0;

 spin_lock_irqsave(&stats->lock, flags);

 stats->transfers++;
 stats->transfer_bytes_histo[l2len]++;

 stats->bytes += xfer->len;
 if ((xfer->tx_buf) &&
     (xfer->tx_buf != ctlr->dummy_tx))
  stats->bytes_tx += xfer->len;
 if ((xfer->rx_buf) &&
     (xfer->rx_buf != ctlr->dummy_rx))
  stats->bytes_rx += xfer->len;

 spin_unlock_irqrestore(&stats->lock, flags);
}
