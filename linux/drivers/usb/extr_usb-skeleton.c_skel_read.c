
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {int ongoing_read; int errors; size_t bulk_in_filled; size_t bulk_in_copied; size_t bulk_in_buffer; int io_mutex; int bulk_in_wait; int err_lock; scalar_t__ disconnected; } ;
struct file {int f_flags; struct usb_skel* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EAGAIN ;
 int EFAULT ;
 int EIO ;
 int ENODEV ;
 int EPIPE ;
 int O_NONBLOCK ;
 scalar_t__ copy_to_user (char*,size_t,size_t) ;
 size_t min (size_t,size_t) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int skel_do_read_io (struct usb_skel*,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static ssize_t skel_read(struct file *file, char *buffer, size_t count,
    loff_t *ppos)
{
 struct usb_skel *dev;
 int rv;
 bool ongoing_io;

 dev = file->private_data;

 if (!count)
  return 0;


 rv = mutex_lock_interruptible(&dev->io_mutex);
 if (rv < 0)
  return rv;

 if (dev->disconnected) {
  rv = -ENODEV;
  goto exit;
 }


retry:
 spin_lock_irq(&dev->err_lock);
 ongoing_io = dev->ongoing_read;
 spin_unlock_irq(&dev->err_lock);

 if (ongoing_io) {

  if (file->f_flags & O_NONBLOCK) {
   rv = -EAGAIN;
   goto exit;
  }




  rv = wait_event_interruptible(dev->bulk_in_wait, (!dev->ongoing_read));
  if (rv < 0)
   goto exit;
 }


 rv = dev->errors;
 if (rv < 0) {

  dev->errors = 0;

  rv = (rv == -EPIPE) ? rv : -EIO;

  goto exit;
 }






 if (dev->bulk_in_filled) {

  size_t available = dev->bulk_in_filled - dev->bulk_in_copied;
  size_t chunk = min(available, count);

  if (!available) {




   rv = skel_do_read_io(dev, count);
   if (rv < 0)
    goto exit;
   else
    goto retry;
  }





  if (copy_to_user(buffer,
     dev->bulk_in_buffer + dev->bulk_in_copied,
     chunk))
   rv = -EFAULT;
  else
   rv = chunk;

  dev->bulk_in_copied += chunk;





  if (available < count)
   skel_do_read_io(dev, count - chunk);
 } else {

  rv = skel_do_read_io(dev, count);
  if (rv < 0)
   goto exit;
  else
   goto retry;
 }
exit:
 mutex_unlock(&dev->io_mutex);
 return rv;
}
