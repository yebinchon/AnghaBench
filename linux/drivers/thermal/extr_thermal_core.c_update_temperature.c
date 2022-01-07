
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int last_temperature; int temperature; int device; int lock; } ;


 int EAGAIN ;
 int THERMAL_TEMP_INVALID ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_warn (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_zone_get_temp (struct thermal_zone_device*,int*) ;
 int trace_thermal_temperature (struct thermal_zone_device*) ;

__attribute__((used)) static void update_temperature(struct thermal_zone_device *tz)
{
 int temp, ret;

 ret = thermal_zone_get_temp(tz, &temp);
 if (ret) {
  if (ret != -EAGAIN)
   dev_warn(&tz->device,
     "failed to read out thermal zone (%d)\n",
     ret);
  return;
 }

 mutex_lock(&tz->lock);
 tz->last_temperature = tz->temperature;
 tz->temperature = temp;
 mutex_unlock(&tz->lock);

 trace_thermal_temperature(tz);
 if (tz->last_temperature == THERMAL_TEMP_INVALID)
  dev_dbg(&tz->device, "last_temperature N/A, current_temperature=%d\n",
   tz->temperature);
 else
  dev_dbg(&tz->device, "last_temperature=%d, current_temperature=%d\n",
   tz->last_temperature, tz->temperature);
}
