
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iowarrior {scalar_t__ opened; int mutex; int write_wait; int read_wait; int int_in_urb; scalar_t__ present; int minor; TYPE_1__* interface; } ;
struct inode {int dummy; } ;
struct file {struct iowarrior* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,int ) ;
 int iowarrior_delete (struct iowarrior*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int iowarrior_release(struct inode *inode, struct file *file)
{
 struct iowarrior *dev;
 int retval = 0;

 dev = file->private_data;
 if (!dev)
  return -ENODEV;

 dev_dbg(&dev->interface->dev, "minor %d\n", dev->minor);


 mutex_lock(&dev->mutex);

 if (dev->opened <= 0) {
  retval = -ENODEV;
  mutex_unlock(&dev->mutex);
 } else {
  dev->opened = 0;
  retval = 0;
  if (dev->present) {




   usb_kill_urb(dev->int_in_urb);
   wake_up_interruptible(&dev->read_wait);
   wake_up_interruptible(&dev->write_wait);
   mutex_unlock(&dev->mutex);
  } else {

   mutex_unlock(&dev->mutex);
   iowarrior_delete(dev);
  }
 }
 return retval;
}
