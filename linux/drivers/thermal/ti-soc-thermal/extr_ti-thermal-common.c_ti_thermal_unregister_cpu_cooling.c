
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_thermal_data {scalar_t__ policy; int cool_dev; } ;
struct ti_bandgap {int dummy; } ;


 int cpufreq_cooling_unregister (int ) ;
 int cpufreq_cpu_put (scalar_t__) ;
 struct ti_thermal_data* ti_bandgap_get_sensor_data (struct ti_bandgap*,int) ;

int ti_thermal_unregister_cpu_cooling(struct ti_bandgap *bgp, int id)
{
 struct ti_thermal_data *data;

 data = ti_bandgap_get_sensor_data(bgp, id);

 if (data) {
  cpufreq_cooling_unregister(data->cool_dev);
  if (data->policy)
   cpufreq_cpu_put(data->policy);
 }

 return 0;
}
