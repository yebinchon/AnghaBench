
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;

__attribute__((used)) static int
usb_role_switch_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 int ret;

 ret = add_uevent_var(env, "USB_ROLE_SWITCH=%s", dev_name(dev));
 if (ret)
  dev_err(dev, "failed to add uevent USB_ROLE_SWITCH\n");

 return ret;
}
