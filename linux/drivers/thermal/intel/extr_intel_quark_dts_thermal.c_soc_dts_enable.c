
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {struct soc_sensor_entry* devdata; } ;
struct soc_sensor_entry {void* mode; int locked; } ;


 int EPERM ;
 int MBI_REG_READ ;
 int MBI_REG_WRITE ;
 int QRK_DTS_ENABLE_BIT ;
 int QRK_DTS_REG_OFFSET_ENABLE ;
 int QRK_MBI_UNIT_RMU ;
 void* THERMAL_DEVICE_DISABLED ;
 void* THERMAL_DEVICE_ENABLED ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int iosf_mbi_write (int ,int ,int ,int) ;
 int pr_info (char*) ;

__attribute__((used)) static int soc_dts_enable(struct thermal_zone_device *tzd)
{
 u32 out;
 struct soc_sensor_entry *aux_entry = tzd->devdata;
 int ret;

 ret = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
       QRK_DTS_REG_OFFSET_ENABLE, &out);
 if (ret)
  return ret;

 if (out & QRK_DTS_ENABLE_BIT) {
  aux_entry->mode = THERMAL_DEVICE_ENABLED;
  return 0;
 }

 if (!aux_entry->locked) {
  out |= QRK_DTS_ENABLE_BIT;
  ret = iosf_mbi_write(QRK_MBI_UNIT_RMU, MBI_REG_WRITE,
         QRK_DTS_REG_OFFSET_ENABLE, out);
  if (ret)
   return ret;

  aux_entry->mode = THERMAL_DEVICE_ENABLED;
 } else {
  aux_entry->mode = THERMAL_DEVICE_DISABLED;
  pr_info("DTS is locked. Cannot enable DTS\n");
  ret = -EPERM;
 }

 return ret;
}
