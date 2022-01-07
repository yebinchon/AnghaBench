
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct tee_device {int flags; TYPE_1__ dev; int * pool; int c_no_users; int cdev; } ;


 int TEE_DEVICE_FLAG_REGISTERED ;
 int cdev_del (int *) ;
 int device_del (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;
 int sysfs_remove_group (int *,int *) ;
 int tee_dev_group ;
 int tee_device_put (struct tee_device*) ;
 int wait_for_completion (int *) ;

void tee_device_unregister(struct tee_device *teedev)
{
 if (!teedev)
  return;

 if (teedev->flags & TEE_DEVICE_FLAG_REGISTERED) {
  sysfs_remove_group(&teedev->dev.kobj, &tee_dev_group);
  cdev_del(&teedev->cdev);
  device_del(&teedev->dev);
 }

 tee_device_put(teedev);
 wait_for_completion(&teedev->c_no_users);






 teedev->pool = ((void*)0);

 put_device(&teedev->dev);
}
