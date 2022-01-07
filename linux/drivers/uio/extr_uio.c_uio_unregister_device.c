
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; } ;
struct uio_device {int dev; int async_queue; int wait; int info_lock; int * info; } ;


 int POLL_HUP ;
 int SIGIO ;
 scalar_t__ UIO_IRQ_CUSTOM ;
 int device_unregister (int *) ;
 int free_irq (scalar_t__,struct uio_device*) ;
 int kill_fasync (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uio_dev_del_attributes (struct uio_device*) ;
 int uio_free_minor (struct uio_device*) ;
 int wake_up_interruptible (int *) ;

void uio_unregister_device(struct uio_info *info)
{
 struct uio_device *idev;

 if (!info || !info->uio_dev)
  return;

 idev = info->uio_dev;

 uio_free_minor(idev);

 mutex_lock(&idev->info_lock);
 uio_dev_del_attributes(idev);

 if (info->irq && info->irq != UIO_IRQ_CUSTOM)
  free_irq(info->irq, idev);

 idev->info = ((void*)0);
 mutex_unlock(&idev->info_lock);

 wake_up_interruptible(&idev->wait);
 kill_fasync(&idev->async_queue, SIGIO, POLL_HUP);

 device_unregister(&idev->dev);

 return;
}
