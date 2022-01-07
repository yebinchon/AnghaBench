
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {int lock; int printer_status; scalar_t__ printer_cdev_open; } ;
struct inode {int dummy; } ;
struct file {struct printer_dev* private_data; } ;


 int DBG (struct printer_dev*,char*) ;
 int PRINTER_SELECTED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
printer_close(struct inode *inode, struct file *fd)
{
 struct printer_dev *dev = fd->private_data;
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 dev->printer_cdev_open = 0;
 fd->private_data = ((void*)0);

 dev->printer_status &= ~PRINTER_SELECTED;
 spin_unlock_irqrestore(&dev->lock, flags);

 DBG(dev, "printer_close\n");

 return 0;
}
