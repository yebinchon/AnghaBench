
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guid; } ;
struct wmi_block {TYPE_1__ gblock; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct wmi_block* dev_to_wblock (struct device*) ;

__attribute__((used)) static int wmi_dev_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct wmi_block *wblock = dev_to_wblock(dev);

 if (add_uevent_var(env, "MODALIAS=wmi:%pUL", wblock->gblock.guid))
  return -ENOMEM;

 if (add_uevent_var(env, "WMI_GUID=%pUL", wblock->gblock.guid))
  return -ENOMEM;

 return 0;
}
