
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; } ;


 int __disable_cmf (struct ccw_device*) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;

int disable_cmf(struct ccw_device *cdev)
{
 int ret;

 device_lock(&cdev->dev);
 ret = __disable_cmf(cdev);
 device_unlock(&cdev->dev);

 return ret;
}
