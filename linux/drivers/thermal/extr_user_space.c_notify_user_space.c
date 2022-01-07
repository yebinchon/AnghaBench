
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct thermal_zone_device {int type; int temperature; int notify_event; int lock; TYPE_1__ device; } ;


 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 char* kasprintf (int ,char*,int) ;
 int kfree (char*) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int notify_user_space(struct thermal_zone_device *tz, int trip)
{
 char *thermal_prop[5];
 int i;

 mutex_lock(&tz->lock);
 thermal_prop[0] = kasprintf(GFP_KERNEL, "NAME=%s", tz->type);
 thermal_prop[1] = kasprintf(GFP_KERNEL, "TEMP=%d", tz->temperature);
 thermal_prop[2] = kasprintf(GFP_KERNEL, "TRIP=%d", trip);
 thermal_prop[3] = kasprintf(GFP_KERNEL, "EVENT=%d", tz->notify_event);
 thermal_prop[4] = ((void*)0);
 kobject_uevent_env(&tz->device.kobj, KOBJ_CHANGE, thermal_prop);
 for (i = 0; i < 4; ++i)
  kfree(thermal_prop[i]);
 mutex_unlock(&tz->lock);
 return 0;
}
