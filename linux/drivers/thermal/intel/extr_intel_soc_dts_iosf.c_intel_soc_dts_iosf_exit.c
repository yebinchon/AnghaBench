
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_dts_sensors {int * soc_dts; } ;


 int SOC_MAX_DTS_SENSORS ;
 int kfree (struct intel_soc_dts_sensors*) ;
 int remove_dts_thermal_zone (int *) ;
 int update_trip_temp (int *,int,int ,int ) ;

void intel_soc_dts_iosf_exit(struct intel_soc_dts_sensors *sensors)
{
 int i;

 for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
  update_trip_temp(&sensors->soc_dts[i], 0, 0, 0);
  update_trip_temp(&sensors->soc_dts[i], 1, 0, 0);
  remove_dts_thermal_zone(&sensors->soc_dts[i]);
 }
 kfree(sensors);
}
