
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct ap_device {int device_type; } ;


 int ENODEV ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static int ap_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct ap_device *ap_dev = to_ap_dev(dev);
 int retval = 0;

 if (!ap_dev)
  return -ENODEV;


 retval = add_uevent_var(env, "DEV_TYPE=%04X", ap_dev->device_type);
 if (retval)
  return retval;


 retval = add_uevent_var(env, "MODALIAS=ap:t%02X", ap_dev->device_type);

 return retval;
}
