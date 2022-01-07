
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_zone_device {int device; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int attr; } ;
struct thermal_hwmon_temp {int device; int node; int tz_list; int hwmon_node; TYPE_2__ temp_crit; TYPE_1__ temp_input; } ;
struct thermal_hwmon_device {int device; int node; int tz_list; int hwmon_node; TYPE_2__ temp_crit; TYPE_1__ temp_input; } ;


 int dev_dbg (int *,char*) ;
 int device_remove_file (int ,int *) ;
 int hwmon_device_unregister (int ) ;
 int kfree (struct thermal_hwmon_temp*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_hwmon_list_lock ;
 struct thermal_hwmon_temp* thermal_hwmon_lookup_by_type (struct thermal_zone_device*) ;
 struct thermal_hwmon_temp* thermal_hwmon_lookup_temp (struct thermal_hwmon_temp*,struct thermal_zone_device*) ;
 scalar_t__ thermal_zone_crit_temp_valid (struct thermal_zone_device*) ;
 scalar_t__ unlikely (int) ;

void thermal_remove_hwmon_sysfs(struct thermal_zone_device *tz)
{
 struct thermal_hwmon_device *hwmon;
 struct thermal_hwmon_temp *temp;

 hwmon = thermal_hwmon_lookup_by_type(tz);
 if (unlikely(!hwmon)) {

  dev_dbg(&tz->device, "hwmon device lookup failed!\n");
  return;
 }

 temp = thermal_hwmon_lookup_temp(hwmon, tz);
 if (unlikely(!temp)) {

  dev_dbg(&tz->device, "temperature input lookup failed!\n");
  return;
 }

 device_remove_file(hwmon->device, &temp->temp_input.attr);
 if (thermal_zone_crit_temp_valid(tz))
  device_remove_file(hwmon->device, &temp->temp_crit.attr);

 mutex_lock(&thermal_hwmon_list_lock);
 list_del(&temp->hwmon_node);
 kfree(temp);
 if (!list_empty(&hwmon->tz_list)) {
  mutex_unlock(&thermal_hwmon_list_lock);
  return;
 }
 list_del(&hwmon->node);
 mutex_unlock(&thermal_hwmon_list_lock);

 hwmon_device_unregister(hwmon->device);
 kfree(hwmon);
}
