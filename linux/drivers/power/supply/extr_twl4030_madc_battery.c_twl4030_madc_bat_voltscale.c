
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_madc_battery {TYPE_1__* pdata; } ;
struct twl4030_madc_bat_calibration {int voltage; int level; } ;
struct TYPE_2__ {struct twl4030_madc_bat_calibration* discharging; struct twl4030_madc_bat_calibration* charging; } ;


 scalar_t__ twl4030_madc_bat_get_charging_status (struct twl4030_madc_battery*) ;

__attribute__((used)) static int twl4030_madc_bat_voltscale(struct twl4030_madc_battery *bat,
     int volt)
{
 struct twl4030_madc_bat_calibration *calibration;
 int i, res = 0;


 if (twl4030_madc_bat_get_charging_status(bat))
  calibration = bat->pdata->charging;
 else
  calibration = bat->pdata->discharging;

 if (volt > calibration[0].voltage) {
  res = calibration[0].level;
 } else {
  for (i = 0; calibration[i+1].voltage >= 0; i++) {
   if (volt <= calibration[i].voltage &&
     volt >= calibration[i+1].voltage) {

    res = calibration[i].level -
     ((calibration[i].voltage - volt) *
     (calibration[i].level -
     calibration[i+1].level)) /
     (calibration[i].voltage -
     calibration[i+1].voltage);
    break;
   }
  }
 }
 return res;
}
