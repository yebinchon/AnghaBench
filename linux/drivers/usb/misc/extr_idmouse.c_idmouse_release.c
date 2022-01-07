
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_idmouse {scalar_t__ open; int lock; int present; } ;
struct inode {int dummy; } ;
struct file {struct usb_idmouse* private_data; } ;


 int ENODEV ;
 int idmouse_delete (struct usb_idmouse*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_disc_mutex ;

__attribute__((used)) static int idmouse_release(struct inode *inode, struct file *file)
{
 struct usb_idmouse *dev;

 dev = file->private_data;

 if (dev == ((void*)0))
  return -ENODEV;

 mutex_lock(&open_disc_mutex);

 mutex_lock(&dev->lock);


 if (dev->open <= 0) {
  mutex_unlock(&dev->lock);
  mutex_unlock(&open_disc_mutex);
  return -ENODEV;
 }

 --dev->open;

 if (!dev->present) {

  mutex_unlock(&dev->lock);
  mutex_unlock(&open_disc_mutex);
  idmouse_delete(dev);
 } else {
  mutex_unlock(&dev->lock);
  mutex_unlock(&open_disc_mutex);
 }
 return 0;
}
