
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; TYPE_1__* driver; int parent; } ;
struct typec_altmode {int active; int mode; TYPE_2__ dev; } ;
typedef int dir ;
struct TYPE_3__ {int owner; } ;


 int KOBJ_CHANGE ;
 int WARN_ON (int) ;
 int is_typec_port (int ) ;
 int kobject_uevent (int *,int ) ;
 int module_put (int ) ;
 int snprintf (char*,int,char*,int) ;
 int sysfs_notify (int *,char*,char*) ;
 int try_module_get (int ) ;

void typec_altmode_update_active(struct typec_altmode *adev, bool active)
{
 char dir[6];

 if (adev->active == active)
  return;

 if (!is_typec_port(adev->dev.parent) && adev->dev.driver) {
  if (!active)
   module_put(adev->dev.driver->owner);
  else
   WARN_ON(!try_module_get(adev->dev.driver->owner));
 }

 adev->active = active;
 snprintf(dir, sizeof(dir), "mode%d", adev->mode);
 sysfs_notify(&adev->dev.kobj, dir, "active");
 sysfs_notify(&adev->dev.kobj, ((void*)0), "active");
 kobject_uevent(&adev->dev.kobj, KOBJ_CHANGE);
}
