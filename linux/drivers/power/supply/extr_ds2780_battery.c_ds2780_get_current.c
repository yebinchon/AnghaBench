
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dev; } ;
typedef int s16 ;
typedef enum current_types { ____Placeholder_current_types } current_types ;


 int CURRENT_AVG ;
 int CURRENT_NOW ;
 int DS2780_CURRENT_MSB_REG ;
 int DS2780_CURRENT_UNITS ;
 int DS2780_IAVG_MSB_REG ;
 int DS2780_RSNSP_REG ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int ds2780_read16 (struct ds2780_device_info*,int*,int) ;
 int ds2780_read8 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_current(struct ds2780_device_info *dev_info,
 enum current_types type, int *current_uA)
{
 int ret, sense_res;
 s16 current_raw;
 u8 sense_res_raw, reg_msb;





 ret = ds2780_read8(dev_info, &sense_res_raw, DS2780_RSNSP_REG);
 if (ret < 0)
  return ret;

 if (sense_res_raw == 0) {
  dev_err(dev_info->dev, "sense resistor value is 0\n");
  return -EINVAL;
 }
 sense_res = 1000 / sense_res_raw;

 if (type == CURRENT_NOW)
  reg_msb = DS2780_CURRENT_MSB_REG;
 else if (type == CURRENT_AVG)
  reg_msb = DS2780_IAVG_MSB_REG;
 else
  return -EINVAL;
 ret = ds2780_read16(dev_info, &current_raw, reg_msb);
 if (ret < 0)
  return ret;

 *current_uA = current_raw * (DS2780_CURRENT_UNITS / sense_res);
 return 0;
}
