
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int kref; int interface; } ;
struct inode {int dummy; } ;
struct file {struct usb_skel* private_data; } ;


 int ENODEV ;
 int kref_put (int *,int ) ;
 int skel_delete ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int skel_release(struct inode *inode, struct file *file)
{
 struct usb_skel *dev;

 dev = file->private_data;
 if (dev == ((void*)0))
  return -ENODEV;


 usb_autopm_put_interface(dev->interface);


 kref_put(&dev->kref, skel_delete);
 return 0;
}
