
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct chaoskey* private_data; } ;
struct chaoskey {int lock; int open; } ;


 int ENODEV ;
 int chaoskey_driver ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_dbg (struct usb_interface*,char*) ;
 struct usb_interface* usb_find_interface (int *,int ) ;
 struct chaoskey* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int chaoskey_open(struct inode *inode, struct file *file)
{
 struct chaoskey *dev;
 struct usb_interface *interface;


 interface = usb_find_interface(&chaoskey_driver, iminor(inode));
 if (!interface)
  return -ENODEV;

 usb_dbg(interface, "open");

 dev = usb_get_intfdata(interface);
 if (!dev) {
  usb_dbg(interface, "open (dev)");
  return -ENODEV;
 }

 file->private_data = dev;
 mutex_lock(&dev->lock);
 ++dev->open;
 mutex_unlock(&dev->lock);

 usb_dbg(interface, "open success");
 return 0;
}
