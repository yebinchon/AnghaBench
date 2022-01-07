
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_dts_sensor_entry {int tzone; int store_status; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_REG_WRITE ;
 int SOC_DTS_OFFSET_ENABLE ;
 int iosf_mbi_write (int ,int ,int ,int ) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static void remove_dts_thermal_zone(struct intel_soc_dts_sensor_entry *dts)
{
 if (dts) {
  iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
          SOC_DTS_OFFSET_ENABLE, dts->store_status);
  thermal_zone_device_unregister(dts->tzone);
 }
}
