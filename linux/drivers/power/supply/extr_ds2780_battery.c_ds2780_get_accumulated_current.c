
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dev; } ;
typedef int s16 ;


 int DS2780_ACR_MSB_REG ;
 int DS2780_CHARGE_UNITS ;
 int DS2780_RSNSP_REG ;
 int ENXIO ;
 int dev_err (int ,char*) ;
 int ds2780_read16 (struct ds2780_device_info*,int*,int ) ;
 int ds2780_read8 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_accumulated_current(struct ds2780_device_info *dev_info,
 int *accumulated_current)
{
 int ret, sense_res;
 s16 current_raw;
 u8 sense_res_raw;





 ret = ds2780_read8(dev_info, &sense_res_raw, DS2780_RSNSP_REG);
 if (ret < 0)
  return ret;

 if (sense_res_raw == 0) {
  dev_err(dev_info->dev, "sense resistor value is 0\n");
  return -ENXIO;
 }
 sense_res = 1000 / sense_res_raw;
 ret = ds2780_read16(dev_info, &current_raw, DS2780_ACR_MSB_REG);
 if (ret < 0)
  return ret;

 *accumulated_current = current_raw * (DS2780_CHARGE_UNITS / sense_res);
 return 0;
}
