
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2780_device_info {int dummy; } ;
typedef int s16 ;


 int DS2780_TEMP_MSB_REG ;
 int ds2780_read16 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_temperature(struct ds2780_device_info *dev_info,
 int *temperature)
{
 int ret;
 s16 temperature_raw;
 ret = ds2780_read16(dev_info, &temperature_raw,
    DS2780_TEMP_MSB_REG);
 if (ret < 0)
  return ret;







 *temperature = ((temperature_raw / 32) * 125) / 100;
 return 0;
}
