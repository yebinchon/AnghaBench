
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_listener {struct uio_device* dev; } ;
struct uio_device {int dev; int owner; int info_lock; TYPE_1__* info; } ;
struct inode {int dummy; } ;
struct file {struct uio_listener* private_data; } ;
struct TYPE_2__ {int (* release ) (TYPE_1__*,struct inode*) ;} ;


 int kfree (struct uio_listener*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int stub1 (TYPE_1__*,struct inode*) ;

__attribute__((used)) static int uio_release(struct inode *inode, struct file *filep)
{
 int ret = 0;
 struct uio_listener *listener = filep->private_data;
 struct uio_device *idev = listener->dev;

 mutex_lock(&idev->info_lock);
 if (idev->info && idev->info->release)
  ret = idev->info->release(idev->info, inode);
 mutex_unlock(&idev->info_lock);

 module_put(idev->owner);
 kfree(listener);
 put_device(&idev->dev);
 return ret;
}
