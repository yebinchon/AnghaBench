
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {scalar_t__ ti_thermal; scalar_t__ our_zone; } ;
struct ti_bandgap {int dummy; } ;


 int thermal_zone_device_unregister (scalar_t__) ;
 struct ti_thermal_data* ti_bandgap_get_sensor_data (struct ti_bandgap*,int) ;

int ti_thermal_remove_sensor(struct ti_bandgap *bgp, int id)
{
 struct ti_thermal_data *data;

 data = ti_bandgap_get_sensor_data(bgp, id);

 if (data && data->ti_thermal) {
  if (data->our_zone)
   thermal_zone_device_unregister(data->ti_thermal);
 }

 return 0;
}
