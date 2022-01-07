
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {int current_rx_bytes; int lock; int rx_buffers; int tx_reqs; int tx_wait; int rx_wait; int lock_printer_io; } ;
struct file {struct printer_dev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int setup_rx_reqs (struct printer_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t
printer_poll(struct file *fd, poll_table *wait)
{
 struct printer_dev *dev = fd->private_data;
 unsigned long flags;
 __poll_t status = 0;

 mutex_lock(&dev->lock_printer_io);
 spin_lock_irqsave(&dev->lock, flags);
 setup_rx_reqs(dev);
 spin_unlock_irqrestore(&dev->lock, flags);
 mutex_unlock(&dev->lock_printer_io);

 poll_wait(fd, &dev->rx_wait, wait);
 poll_wait(fd, &dev->tx_wait, wait);

 spin_lock_irqsave(&dev->lock, flags);
 if (likely(!list_empty(&dev->tx_reqs)))
  status |= EPOLLOUT | EPOLLWRNORM;

 if (likely(dev->current_rx_bytes) ||
   likely(!list_empty(&dev->rx_buffers)))
  status |= EPOLLIN | EPOLLRDNORM;

 spin_unlock_irqrestore(&dev->lock, flags);

 return status;
}
