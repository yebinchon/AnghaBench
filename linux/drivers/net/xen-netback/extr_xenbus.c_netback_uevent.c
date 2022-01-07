
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct kobj_uevent_env {int dummy; } ;
struct backend_info {TYPE_2__* vif; int hotplug_script; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct backend_info* dev_get_drvdata (int *) ;

__attribute__((used)) static int netback_uevent(struct xenbus_device *xdev,
     struct kobj_uevent_env *env)
{
 struct backend_info *be = dev_get_drvdata(&xdev->dev);

 if (!be)
  return 0;

 if (add_uevent_var(env, "script=%s", be->hotplug_script))
  return -ENOMEM;

 if (!be->vif)
  return 0;

 return add_uevent_var(env, "vif=%s", be->vif->dev->name);
}
