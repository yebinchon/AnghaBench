
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int dummy; } ;
struct ccw_device {int dev; } ;


 int ENODEV ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int raw3215_startup (struct raw3215_info*) ;

__attribute__((used)) static int raw3215_set_online (struct ccw_device *cdev)
{
 struct raw3215_info *raw;

 raw = dev_get_drvdata(&cdev->dev);
 if (!raw)
  return -ENODEV;

 return raw3215_startup(raw);
}
