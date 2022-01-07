
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dummy; } ;


 int DS2780_CONTROL_REG ;
 int ds2780_save_eeprom (struct ds2780_device_info*,int ) ;
 int ds2780_write (struct ds2780_device_info*,int *,int ,int) ;

__attribute__((used)) static int ds2780_set_control_register(struct ds2780_device_info *dev_info,
 u8 control_reg)
{
 int ret;

 ret = ds2780_write(dev_info, &control_reg,
    DS2780_CONTROL_REG, sizeof(u8));
 if (ret < 0)
  return ret;

 return ds2780_save_eeprom(dev_info, DS2780_CONTROL_REG);
}
