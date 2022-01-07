
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int lock; int sisusb_dev; int ready; int present; } ;
struct file {struct sisusb_usb_data* private_data; } ;
typedef int loff_t ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int no_seek_end_llseek (struct file*,int ,int) ;

__attribute__((used)) static loff_t sisusb_lseek(struct file *file, loff_t offset, int orig)
{
 struct sisusb_usb_data *sisusb;
 loff_t ret;

 sisusb = file->private_data;
 if (!sisusb)
  return -ENODEV;

 mutex_lock(&sisusb->lock);


 if (!sisusb->present || !sisusb->ready || !sisusb->sisusb_dev) {
  mutex_unlock(&sisusb->lock);
  return -ENODEV;
 }

 ret = no_seek_end_llseek(file, offset, orig);

 mutex_unlock(&sisusb->lock);
 return ret;
}
