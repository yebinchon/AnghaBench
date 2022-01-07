
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2781_device_info {int dev; } ;
typedef int s16 ;


 int DS2781_ACR_MSB ;
 int DS2781_CHARGE_UNITS ;
 int DS2781_RSNSP ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int ds2781_read16 (struct ds2781_device_info*,int*,int ) ;
 int ds2781_read8 (struct ds2781_device_info*,int*,int ) ;

__attribute__((used)) static int ds2781_get_accumulated_current(struct ds2781_device_info *dev_info,
 int *accumulated_current)
{
 int ret, sense_res;
 s16 current_raw;
 u8 sense_res_raw;





 ret = ds2781_read8(dev_info, &sense_res_raw, DS2781_RSNSP);
 if (ret < 0)
  return ret;

 if (sense_res_raw == 0) {
  dev_err(dev_info->dev, "sense resistor value is 0\n");
  return -EINVAL;
 }
 sense_res = 1000 / sense_res_raw;
 ret = ds2781_read16(dev_info, &current_raw, DS2781_ACR_MSB);
 if (ret < 0)
  return ret;

 *accumulated_current = current_raw * (DS2781_CHARGE_UNITS / sense_res);
 return 0;
}
