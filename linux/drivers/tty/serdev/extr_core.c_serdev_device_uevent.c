
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int acpi_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;

__attribute__((used)) static int serdev_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 int rc;



 rc = acpi_device_uevent_modalias(dev, env);
 if (rc != -ENODEV)
  return rc;

 return of_device_uevent_modalias(dev, env);
}
