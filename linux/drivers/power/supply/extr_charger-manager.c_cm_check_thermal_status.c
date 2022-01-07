
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charger_manager {scalar_t__ emergency_stop; int dev; struct charger_desc* desc; } ;
struct charger_desc {int temp_max; int temp_min; scalar_t__ temp_diff; } ;


 int CM_EVENT_BATT_COLD ;
 int CM_EVENT_BATT_OVERHEAT ;
 int cm_get_battery_temperature (struct charger_manager*,int*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int cm_check_thermal_status(struct charger_manager *cm)
{
 struct charger_desc *desc = cm->desc;
 int temp, upper_limit, lower_limit;
 int ret = 0;

 ret = cm_get_battery_temperature(cm, &temp);
 if (ret) {





  dev_err(cm->dev, "Failed to get battery temperature\n");
  return 0;
 }

 upper_limit = desc->temp_max;
 lower_limit = desc->temp_min;

 if (cm->emergency_stop) {
  upper_limit -= desc->temp_diff;
  lower_limit += desc->temp_diff;
 }

 if (temp > upper_limit)
  ret = CM_EVENT_BATT_OVERHEAT;
 else if (temp < lower_limit)
  ret = CM_EVENT_BATT_COLD;

 return ret;
}
