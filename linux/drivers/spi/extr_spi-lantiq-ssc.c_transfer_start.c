
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct lantiq_ssc_spi {int tx_todo; int rx_todo; int lock; scalar_t__ tx; scalar_t__ rx; } ;


 int rx_request (struct lantiq_ssc_spi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_fifo_write (struct lantiq_ssc_spi*) ;

__attribute__((used)) static int transfer_start(struct lantiq_ssc_spi *spi, struct spi_device *spidev,
     struct spi_transfer *t)
{
 unsigned long flags;

 spin_lock_irqsave(&spi->lock, flags);

 spi->tx = t->tx_buf;
 spi->rx = t->rx_buf;

 if (t->tx_buf) {
  spi->tx_todo = t->len;


  tx_fifo_write(spi);
 }

 if (spi->rx) {
  spi->rx_todo = t->len;


  if (!spi->tx)
   rx_request(spi);
 }

 spin_unlock_irqrestore(&spi->lock, flags);

 return t->len;
}
