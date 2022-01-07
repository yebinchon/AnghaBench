
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_yurex {int kref; } ;
struct inode {int dummy; } ;
struct file {struct usb_yurex* private_data; } ;


 int ENODEV ;
 int kref_put (int *,int ) ;
 int yurex_delete ;

__attribute__((used)) static int yurex_release(struct inode *inode, struct file *file)
{
 struct usb_yurex *dev;

 dev = file->private_data;
 if (dev == ((void*)0))
  return -ENODEV;


 kref_put(&dev->kref, yurex_delete);
 return 0;
}
