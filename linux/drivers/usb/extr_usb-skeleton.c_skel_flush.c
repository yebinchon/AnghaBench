
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int errors; int io_mutex; int err_lock; } ;
struct file {struct usb_skel* private_data; } ;
typedef int fl_owner_t ;


 int EIO ;
 int ENODEV ;
 int EPIPE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skel_draw_down (struct usb_skel*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int skel_flush(struct file *file, fl_owner_t id)
{
 struct usb_skel *dev;
 int res;

 dev = file->private_data;
 if (dev == ((void*)0))
  return -ENODEV;


 mutex_lock(&dev->io_mutex);
 skel_draw_down(dev);


 spin_lock_irq(&dev->err_lock);
 res = dev->errors ? (dev->errors == -EPIPE ? -EPIPE : -EIO) : 0;
 dev->errors = 0;
 spin_unlock_irq(&dev->err_lock);

 mutex_unlock(&dev->io_mutex);

 return res;
}
