
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_eptdev {int dev; int readq; int ept_lock; int * ept; } ;
struct device {int dummy; } ;


 struct rpmsg_eptdev* dev_to_eptdev (struct device*) ;
 int device_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int rpmsg_destroy_ept (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int rpmsg_eptdev_destroy(struct device *dev, void *data)
{
 struct rpmsg_eptdev *eptdev = dev_to_eptdev(dev);

 mutex_lock(&eptdev->ept_lock);
 if (eptdev->ept) {
  rpmsg_destroy_ept(eptdev->ept);
  eptdev->ept = ((void*)0);
 }
 mutex_unlock(&eptdev->ept_lock);


 wake_up_interruptible(&eptdev->readq);

 device_del(&eptdev->dev);
 put_device(&eptdev->dev);

 return 0;
}
