
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct intel_soc_dts_sensor_entry* devdata; } ;
struct intel_soc_dts_sensor_entry {int* trip_types; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;



__attribute__((used)) static int sys_get_trip_type(struct thermal_zone_device *tzd,
        int trip, enum thermal_trip_type *type)
{
 struct intel_soc_dts_sensor_entry *dts;

 dts = tzd->devdata;

 *type = dts->trip_types[trip];

 return 0;
}
