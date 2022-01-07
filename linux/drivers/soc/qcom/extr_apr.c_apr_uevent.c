
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct apr_device {int name; } ;


 int ENODEV ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 struct apr_device* to_apr_device (struct device*) ;

__attribute__((used)) static int apr_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct apr_device *adev = to_apr_device(dev);
 int ret;

 ret = of_device_uevent_modalias(dev, env);
 if (ret != -ENODEV)
  return ret;

 return add_uevent_var(env, "MODALIAS=apr:%s", adev->name);
}
