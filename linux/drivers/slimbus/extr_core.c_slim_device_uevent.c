
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dev; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int dev_name (int *) ;
 struct slim_device* to_slim_device (struct device*) ;

__attribute__((used)) static int slim_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct slim_device *sbdev = to_slim_device(dev);

 return add_uevent_var(env, "MODALIAS=slim:%s", dev_name(&sbdev->dev));
}
