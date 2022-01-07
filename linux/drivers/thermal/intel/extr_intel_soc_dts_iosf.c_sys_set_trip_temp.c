
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct intel_soc_dts_sensor_entry* devdata; } ;
struct intel_soc_dts_sensors {int tj_max; int dts_update_lock; } ;
struct intel_soc_dts_sensor_entry {int * trip_types; struct intel_soc_dts_sensors* sensors; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_trip_temp (struct intel_soc_dts_sensor_entry*,int,int,int ) ;

__attribute__((used)) static int sys_set_trip_temp(struct thermal_zone_device *tzd, int trip,
        int temp)
{
 struct intel_soc_dts_sensor_entry *dts = tzd->devdata;
 struct intel_soc_dts_sensors *sensors = dts->sensors;
 int status;

 if (temp > sensors->tj_max)
  return -EINVAL;

 mutex_lock(&sensors->dts_update_lock);
 status = update_trip_temp(tzd->devdata, trip, temp,
      dts->trip_types[trip]);
 mutex_unlock(&sensors->dts_update_lock);

 return status;
}
