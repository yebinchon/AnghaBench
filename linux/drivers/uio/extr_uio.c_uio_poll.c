
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_listener {scalar_t__ event_count; struct uio_device* dev; } ;
struct uio_device {int event; int wait; int info_lock; TYPE_1__* info; } ;
struct file {struct uio_listener* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int irq; } ;


 int EIO ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t uio_poll(struct file *filep, poll_table *wait)
{
 struct uio_listener *listener = filep->private_data;
 struct uio_device *idev = listener->dev;
 __poll_t ret = 0;

 mutex_lock(&idev->info_lock);
 if (!idev->info || !idev->info->irq)
  ret = -EIO;
 mutex_unlock(&idev->info_lock);

 if (ret)
  return ret;

 poll_wait(filep, &idev->wait, wait);
 if (listener->event_count != atomic_read(&idev->event))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
