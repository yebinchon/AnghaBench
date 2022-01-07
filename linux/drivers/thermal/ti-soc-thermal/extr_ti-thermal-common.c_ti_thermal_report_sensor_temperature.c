
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {int thermal_wq; } ;
struct ti_bandgap {int dummy; } ;


 int schedule_work (int *) ;
 struct ti_thermal_data* ti_bandgap_get_sensor_data (struct ti_bandgap*,int) ;

int ti_thermal_report_sensor_temperature(struct ti_bandgap *bgp, int id)
{
 struct ti_thermal_data *data;

 data = ti_bandgap_get_sensor_data(bgp, id);

 schedule_work(&data->thermal_wq);

 return 0;
}
