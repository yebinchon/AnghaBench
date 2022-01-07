
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int fifo_lock; int tx_fifo; } ;


 int kfifo_in (int *,unsigned char*,int) ;
 int kfifo_is_empty (int *) ;
 int mrdy_assert (struct ifx_spi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ifx_spi_write(struct tty_struct *tty, const unsigned char *buf,
    int count)
{
 struct ifx_spi_device *ifx_dev = tty->driver_data;
 unsigned char *tmp_buf = (unsigned char *)buf;
 unsigned long flags;
 bool is_fifo_empty;
 int tx_count;

 spin_lock_irqsave(&ifx_dev->fifo_lock, flags);
 is_fifo_empty = kfifo_is_empty(&ifx_dev->tx_fifo);
 tx_count = kfifo_in(&ifx_dev->tx_fifo, tmp_buf, count);
 spin_unlock_irqrestore(&ifx_dev->fifo_lock, flags);
 if (is_fifo_empty)
  mrdy_assert(ifx_dev);

 return tx_count;
}
