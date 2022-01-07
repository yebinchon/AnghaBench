
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {int tx_reqs_active; int tx_flush_wait; int lock; int tx_reqs; } ;
struct inode {int dummy; } ;
struct file {struct printer_dev* private_data; } ;
typedef int loff_t ;


 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int likely (int ) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
printer_fsync(struct file *fd, loff_t start, loff_t end, int datasync)
{
 struct printer_dev *dev = fd->private_data;
 struct inode *inode = file_inode(fd);
 unsigned long flags;
 int tx_list_empty;

 inode_lock(inode);
 spin_lock_irqsave(&dev->lock, flags);
 tx_list_empty = (likely(list_empty(&dev->tx_reqs)));
 spin_unlock_irqrestore(&dev->lock, flags);

 if (!tx_list_empty) {

  wait_event_interruptible(dev->tx_flush_wait,
    (likely(list_empty(&dev->tx_reqs_active))));
 }
 inode_unlock(inode);

 return 0;
}
