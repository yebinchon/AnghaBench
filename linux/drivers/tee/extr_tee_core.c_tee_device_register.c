
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; int devt; } ;
struct tee_device {int flags; int cdev; TYPE_1__ dev; int name; } ;


 int EINVAL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int TEE_DEVICE_FLAG_REGISTERED ;
 int cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int device_add (TYPE_1__*) ;
 int device_del (TYPE_1__*) ;
 int sysfs_create_group (int *,int *) ;
 int tee_dev_group ;

int tee_device_register(struct tee_device *teedev)
{
 int rc;

 if (teedev->flags & TEE_DEVICE_FLAG_REGISTERED) {
  dev_err(&teedev->dev, "attempt to register twice\n");
  return -EINVAL;
 }

 rc = cdev_add(&teedev->cdev, teedev->dev.devt, 1);
 if (rc) {
  dev_err(&teedev->dev,
   "unable to cdev_add() %s, major %d, minor %d, err=%d\n",
   teedev->name, MAJOR(teedev->dev.devt),
   MINOR(teedev->dev.devt), rc);
  return rc;
 }

 rc = device_add(&teedev->dev);
 if (rc) {
  dev_err(&teedev->dev,
   "unable to device_add() %s, major %d, minor %d, err=%d\n",
   teedev->name, MAJOR(teedev->dev.devt),
   MINOR(teedev->dev.devt), rc);
  goto err_device_add;
 }

 rc = sysfs_create_group(&teedev->dev.kobj, &tee_dev_group);
 if (rc) {
  dev_err(&teedev->dev,
   "failed to create sysfs attributes, err=%d\n", rc);
  goto err_sysfs_create_group;
 }

 teedev->flags |= TEE_DEVICE_FLAG_REGISTERED;
 return 0;

err_sysfs_create_group:
 device_del(&teedev->dev);
err_device_add:
 cdev_del(&teedev->cdev);
 return rc;
}
