
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {struct intel_soc_dts_sensor_entry* devdata; } ;
struct intel_soc_dts_sensors {int tj_max; } ;
struct intel_soc_dts_sensor_entry {int temp_mask; int temp_shift; struct intel_soc_dts_sensors* sensors; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_REG_READ ;
 int SOC_DTS_OFFSET_TEMP ;
 scalar_t__ SOC_DTS_TJMAX_ENCODING ;
 int iosf_mbi_read (int ,int ,int ,int*) ;

__attribute__((used)) static int sys_get_curr_temp(struct thermal_zone_device *tzd,
        int *temp)
{
 int status;
 u32 out;
 struct intel_soc_dts_sensor_entry *dts;
 struct intel_soc_dts_sensors *sensors;

 dts = tzd->devdata;
 sensors = dts->sensors;
 status = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
          SOC_DTS_OFFSET_TEMP, &out);
 if (status)
  return status;

 out = (out & dts->temp_mask) >> dts->temp_shift;
 out -= SOC_DTS_TJMAX_ENCODING;
 *temp = sensors->tj_max - out * 1000;

 return 0;
}
