
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb_priv {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct ep_data* private_data; } ;
struct ep_data {scalar_t__ state; int lock; TYPE_1__* dev; int * ep; int name; int desc; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lock; } ;


 int DBG (TYPE_1__*,char*,int ) ;
 int EBADMSG ;
 int EFAULT ;
 int EINVAL ;
 int EIOCBQUEUED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ STATE_EP_ENABLED ;
 int copy_from_iter_full (char*,size_t,struct iov_iter*) ;
 int ep_aio (struct kiocb*,struct kiocb_priv*,struct ep_data*,char*,size_t) ;
 int ep_config (struct ep_data*,char*,size_t) ;
 int ep_io (struct ep_data*,char*,size_t) ;
 int get_ready_ep (int ,struct ep_data*,int) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ is_sync_kiocb (struct kiocb*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 struct kiocb_priv* kzalloc (int,int ) ;
 scalar_t__ likely (int ) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int usb_endpoint_dir_in (int *) ;
 scalar_t__ usb_endpoint_xfer_isoc (int *) ;
 int usb_ep_set_halt (int *) ;

__attribute__((used)) static ssize_t
ep_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct ep_data *epdata = file->private_data;
 size_t len = iov_iter_count(from);
 bool configured;
 ssize_t value;
 char *buf;

 if ((value = get_ready_ep(file->f_flags, epdata, 1)) < 0)
  return value;

 configured = epdata->state == STATE_EP_ENABLED;


 if (configured && !usb_endpoint_dir_in(&epdata->desc)) {
  if (usb_endpoint_xfer_isoc(&epdata->desc) ||
      !is_sync_kiocb(iocb)) {
   mutex_unlock(&epdata->lock);
   return -EINVAL;
  }
  DBG (epdata->dev, "%s halt\n", epdata->name);
  spin_lock_irq(&epdata->dev->lock);
  if (likely(epdata->ep != ((void*)0)))
   usb_ep_set_halt(epdata->ep);
  spin_unlock_irq(&epdata->dev->lock);
  mutex_unlock(&epdata->lock);
  return -EBADMSG;
 }

 buf = kmalloc(len, GFP_KERNEL);
 if (unlikely(!buf)) {
  mutex_unlock(&epdata->lock);
  return -ENOMEM;
 }

 if (unlikely(!copy_from_iter_full(buf, len, from))) {
  value = -EFAULT;
  goto out;
 }

 if (unlikely(!configured)) {
  value = ep_config(epdata, buf, len);
 } else if (is_sync_kiocb(iocb)) {
  value = ep_io(epdata, buf, len);
 } else {
  struct kiocb_priv *priv = kzalloc(sizeof *priv, GFP_KERNEL);
  value = -ENOMEM;
  if (priv) {
   value = ep_aio(iocb, priv, epdata, buf, len);
   if (value == -EIOCBQUEUED)
    buf = ((void*)0);
  }
 }
out:
 kfree(buf);
 mutex_unlock(&epdata->lock);
 return value;
}
