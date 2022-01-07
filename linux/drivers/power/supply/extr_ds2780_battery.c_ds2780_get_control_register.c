
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dummy; } ;


 int DS2780_CONTROL_REG ;
 int ds2780_read8 (struct ds2780_device_info*,int *,int ) ;

__attribute__((used)) static int ds2780_get_control_register(struct ds2780_device_info *dev_info,
 u8 *control_reg)
{
 return ds2780_read8(dev_info, control_reg, DS2780_CONTROL_REG);
}
