
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thermal_zone_device {int device; int type; } ;
struct TYPE_8__ {int mode; int name; } ;
struct TYPE_9__ {TYPE_3__ attr; int show; } ;
struct TYPE_7__ {TYPE_4__ attr; int name; } ;
struct TYPE_6__ {TYPE_4__ attr; int name; } ;
struct thermal_hwmon_temp {int count; int device; TYPE_2__ temp_input; int tz_list; int hwmon_node; int node; TYPE_1__ temp_crit; struct thermal_zone_device* tz; int type; } ;
struct thermal_hwmon_device {int count; int device; TYPE_2__ temp_input; int tz_list; int hwmon_node; int node; TYPE_1__ temp_crit; struct thermal_zone_device* tz; int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THERMAL_NAME_LENGTH ;
 int device_create_file (int ,TYPE_4__*) ;
 int device_remove_file (int ,TYPE_4__*) ;
 int hwmon_device_register_with_info (int *,int ,struct thermal_hwmon_temp*,int *,int *) ;
 int hwmon_device_unregister (int ) ;
 int kfree (struct thermal_hwmon_temp*) ;
 struct thermal_hwmon_temp* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int ) ;
 int strreplace (int ,char,char) ;
 int sysfs_attr_init (TYPE_3__*) ;
 int temp_crit_show ;
 int temp_input_show ;
 int thermal_hwmon_list ;
 int thermal_hwmon_list_lock ;
 struct thermal_hwmon_temp* thermal_hwmon_lookup_by_type (struct thermal_zone_device*) ;
 scalar_t__ thermal_zone_crit_temp_valid (struct thermal_zone_device*) ;

int thermal_add_hwmon_sysfs(struct thermal_zone_device *tz)
{
 struct thermal_hwmon_device *hwmon;
 struct thermal_hwmon_temp *temp;
 int new_hwmon_device = 1;
 int result;

 hwmon = thermal_hwmon_lookup_by_type(tz);
 if (hwmon) {
  new_hwmon_device = 0;
  goto register_sys_interface;
 }

 hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
 if (!hwmon)
  return -ENOMEM;

 INIT_LIST_HEAD(&hwmon->tz_list);
 strlcpy(hwmon->type, tz->type, THERMAL_NAME_LENGTH);
 strreplace(hwmon->type, '-', '_');
 hwmon->device = hwmon_device_register_with_info(&tz->device, hwmon->type,
       hwmon, ((void*)0), ((void*)0));
 if (IS_ERR(hwmon->device)) {
  result = PTR_ERR(hwmon->device);
  goto free_mem;
 }

 register_sys_interface:
 temp = kzalloc(sizeof(*temp), GFP_KERNEL);
 if (!temp) {
  result = -ENOMEM;
  goto unregister_name;
 }

 temp->tz = tz;
 hwmon->count++;

 snprintf(temp->temp_input.name, sizeof(temp->temp_input.name),
   "temp%d_input", hwmon->count);
 temp->temp_input.attr.attr.name = temp->temp_input.name;
 temp->temp_input.attr.attr.mode = 0444;
 temp->temp_input.attr.show = temp_input_show;
 sysfs_attr_init(&temp->temp_input.attr.attr);
 result = device_create_file(hwmon->device, &temp->temp_input.attr);
 if (result)
  goto free_temp_mem;

 if (thermal_zone_crit_temp_valid(tz)) {
  snprintf(temp->temp_crit.name,
    sizeof(temp->temp_crit.name),
    "temp%d_crit", hwmon->count);
  temp->temp_crit.attr.attr.name = temp->temp_crit.name;
  temp->temp_crit.attr.attr.mode = 0444;
  temp->temp_crit.attr.show = temp_crit_show;
  sysfs_attr_init(&temp->temp_crit.attr.attr);
  result = device_create_file(hwmon->device,
         &temp->temp_crit.attr);
  if (result)
   goto unregister_input;
 }

 mutex_lock(&thermal_hwmon_list_lock);
 if (new_hwmon_device)
  list_add_tail(&hwmon->node, &thermal_hwmon_list);
 list_add_tail(&temp->hwmon_node, &hwmon->tz_list);
 mutex_unlock(&thermal_hwmon_list_lock);

 return 0;

 unregister_input:
 device_remove_file(hwmon->device, &temp->temp_input.attr);
 free_temp_mem:
 kfree(temp);
 unregister_name:
 if (new_hwmon_device)
  hwmon_device_unregister(hwmon->device);
 free_mem:
 if (new_hwmon_device)
  kfree(hwmon);

 return result;
}
