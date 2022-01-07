
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int sw_lock; } ;
struct inode {int dummy; } ;
struct file {struct usb_ftdi* private_data; } ;


 int ENODEV ;
 int ftdi_elan_put_kref (struct usb_ftdi*) ;
 int up (int *) ;

__attribute__((used)) static int ftdi_elan_release(struct inode *inode, struct file *file)
{
 struct usb_ftdi *ftdi = file->private_data;
 if (ftdi == ((void*)0))
  return -ENODEV;
 up(&ftdi->sw_lock);
 ftdi_elan_put_kref(ftdi);
 return 0;
}
