
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_ftdi {int sw_lock; } ;
struct inode {int dummy; } ;
struct file {struct usb_ftdi* private_data; } ;


 int EINTR ;
 int ENODEV ;
 scalar_t__ down_interruptible (int *) ;
 int ftdi_elan_driver ;
 int ftdi_elan_get_kref (struct usb_ftdi*) ;
 int iminor (struct inode*) ;
 int pr_err (char*,int) ;
 struct usb_interface* usb_find_interface (int *,int) ;
 struct usb_ftdi* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int ftdi_elan_open(struct inode *inode, struct file *file)
{
 int subminor;
 struct usb_interface *interface;

 subminor = iminor(inode);
 interface = usb_find_interface(&ftdi_elan_driver, subminor);

 if (!interface) {
  pr_err("can't find device for minor %d\n", subminor);
  return -ENODEV;
 } else {
  struct usb_ftdi *ftdi = usb_get_intfdata(interface);
  if (!ftdi) {
   return -ENODEV;
  } else {
   if (down_interruptible(&ftdi->sw_lock)) {
    return -EINTR;
   } else {
    ftdi_elan_get_kref(ftdi);
    file->private_data = ftdi;
    return 0;
   }
  }
 }
}
