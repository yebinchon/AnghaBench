
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
typedef int guid_t ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int const*) ;
 struct visor_device* to_visor_device (struct device*) ;
 int * visorchannel_get_guid (int ) ;

__attribute__((used)) static int visorbus_uevent(struct device *xdev, struct kobj_uevent_env *env)
{
 struct visor_device *dev;
 const guid_t *guid;

 dev = to_visor_device(xdev);
 guid = visorchannel_get_guid(dev->visorchannel);
 return add_uevent_var(env, "MODALIAS=visorbus:%pUl", guid);
}
