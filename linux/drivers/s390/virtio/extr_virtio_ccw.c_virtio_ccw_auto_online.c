
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; } ;
typedef int async_cookie_t ;


 int ccw_device_set_online (struct ccw_device*) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static void virtio_ccw_auto_online(void *data, async_cookie_t cookie)
{
 struct ccw_device *cdev = data;
 int ret;

 ret = ccw_device_set_online(cdev);
 if (ret)
  dev_warn(&cdev->dev, "Failed to set online: %d\n", ret);
}
