
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int kref; int lock; scalar_t__ isopen; scalar_t__ present; } ;
struct inode {int dummy; } ;
struct file {struct sisusb_usb_data* private_data; } ;


 int ENODEV ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sisusb_delete ;
 int sisusb_kill_all_busy (struct sisusb_usb_data*) ;
 int sisusb_wait_all_out_complete (struct sisusb_usb_data*) ;

__attribute__((used)) static int sisusb_release(struct inode *inode, struct file *file)
{
 struct sisusb_usb_data *sisusb;

 sisusb = file->private_data;
 if (!sisusb)
  return -ENODEV;

 mutex_lock(&sisusb->lock);

 if (sisusb->present) {

  if (!sisusb_wait_all_out_complete(sisusb))
   sisusb_kill_all_busy(sisusb);
 }

 sisusb->isopen = 0;
 file->private_data = ((void*)0);

 mutex_unlock(&sisusb->lock);


 kref_put(&sisusb->kref, sisusb_delete);

 return 0;
}
