
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int devicetype; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;

__attribute__((used)) static int xenbus_uevent_frontend(struct device *_dev,
      struct kobj_uevent_env *env)
{
 struct xenbus_device *dev = to_xenbus_device(_dev);

 if (add_uevent_var(env, "MODALIAS=xen:%s", dev->devicetype))
  return -ENOMEM;

 return 0;
}
