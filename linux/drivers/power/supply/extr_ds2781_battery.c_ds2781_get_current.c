
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2781_device_info {int dev; } ;
typedef int s16 ;
typedef enum current_types { ____Placeholder_current_types } current_types ;


 int CURRENT_AVG ;
 int CURRENT_NOW ;
 int DS2781_CURRENT_MSB ;
 int DS2781_CURRENT_UNITS ;
 int DS2781_IAVG_MSB ;
 int DS2781_RSNSP ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int ds2781_read16 (struct ds2781_device_info*,int*,int) ;
 int ds2781_read8 (struct ds2781_device_info*,int*,int ) ;

__attribute__((used)) static int ds2781_get_current(struct ds2781_device_info *dev_info,
 enum current_types type, int *current_uA)
{
 int ret, sense_res;
 s16 current_raw;
 u8 sense_res_raw, reg_msb;





 ret = ds2781_read8(dev_info, &sense_res_raw, DS2781_RSNSP);
 if (ret < 0)
  return ret;

 if (sense_res_raw == 0) {
  dev_err(dev_info->dev, "sense resistor value is 0\n");
  return -EINVAL;
 }
 sense_res = 1000 / sense_res_raw;

 if (type == CURRENT_NOW)
  reg_msb = DS2781_CURRENT_MSB;
 else if (type == CURRENT_AVG)
  reg_msb = DS2781_IAVG_MSB;
 else
  return -EINVAL;
 ret = ds2781_read16(dev_info, &current_raw, reg_msb);
 if (ret < 0)
  return ret;

 *current_uA = current_raw * (DS2781_CURRENT_UNITS / sense_res);
 return 0;
}
