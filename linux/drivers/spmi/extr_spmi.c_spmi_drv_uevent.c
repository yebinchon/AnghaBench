
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;

__attribute__((used)) static int spmi_drv_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 int ret;

 ret = of_device_uevent_modalias(dev, env);
 if (ret != -ENODEV)
  return ret;

 return 0;
}
