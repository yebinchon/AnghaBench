
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charger_manager {scalar_t__ tzd_batt; TYPE_1__* desc; } ;
struct TYPE_2__ {int measure_battery_temp; } ;


 int ENODEV ;
 int cm_get_battery_temperature_by_psy (struct charger_manager*,int*) ;
 int thermal_zone_get_temp (scalar_t__,int*) ;

__attribute__((used)) static int cm_get_battery_temperature(struct charger_manager *cm,
     int *temp)
{
 int ret;

 if (!cm->desc->measure_battery_temp)
  return -ENODEV;
 {

  ret = cm_get_battery_temperature_by_psy(cm, temp);
 }

 return ret;
}
