
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct chaoskey* private_data; } ;
struct chaoskey {scalar_t__ open; int lock; int present; struct usb_interface* interface; } ;


 int ENODEV ;
 int chaoskey_free (struct chaoskey*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_dbg (struct usb_interface*,char*,...) ;

__attribute__((used)) static int chaoskey_release(struct inode *inode, struct file *file)
{
 struct chaoskey *dev = file->private_data;
 struct usb_interface *interface;

 if (dev == ((void*)0))
  return -ENODEV;

 interface = dev->interface;

 usb_dbg(interface, "release");

 mutex_lock(&dev->lock);

 usb_dbg(interface, "open count at release is %d", dev->open);

 if (dev->open <= 0) {
  usb_dbg(interface, "invalid open count (%d)", dev->open);
  mutex_unlock(&dev->lock);
  return -ENODEV;
 }

 --dev->open;

 if (!dev->present) {
  if (dev->open == 0) {
   mutex_unlock(&dev->lock);
   chaoskey_free(dev);
  } else
   mutex_unlock(&dev->lock);
 } else
  mutex_unlock(&dev->lock);

 usb_dbg(interface, "release success");
 return 0;
}
