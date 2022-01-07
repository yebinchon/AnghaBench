
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2780_device_info {int dummy; } ;
typedef int s16 ;


 int DS2780_VOLT_MSB_REG ;
 int ds2780_read16 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_voltage(struct ds2780_device_info *dev_info,
 int *voltage_uV)
{
 int ret;
 s16 voltage_raw;
 ret = ds2780_read16(dev_info, &voltage_raw,
    DS2780_VOLT_MSB_REG);
 if (ret < 0)
  return ret;





 *voltage_uV = (voltage_raw / 32) * 4880;
 return 0;
}
