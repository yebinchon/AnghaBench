
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {int dummy; } ;


 int MBI_REG_READ ;
 int QRK_DTS_MASK_TEMP ;
 int QRK_DTS_OFFSET_TEMP ;
 int QRK_DTS_REG_OFFSET_TEMP ;
 int QRK_DTS_TEMP_BASE ;
 int QRK_MBI_UNIT_RMU ;
 int dts_update_mutex ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sys_get_curr_temp(struct thermal_zone_device *tzd,
    int *temp)
{
 u32 out;
 int ret;

 mutex_lock(&dts_update_mutex);
 ret = iosf_mbi_read(QRK_MBI_UNIT_RMU, MBI_REG_READ,
       QRK_DTS_REG_OFFSET_TEMP, &out);
 mutex_unlock(&dts_update_mutex);

 if (ret)
  return ret;






 out = (out >> QRK_DTS_OFFSET_TEMP) & QRK_DTS_MASK_TEMP;
 *temp = out - QRK_DTS_TEMP_BASE;

 return 0;
}
