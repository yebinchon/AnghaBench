
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ds2780_device_info {int dummy; } ;


 int DS2780_RAAC_MSB_REG ;
 int ds2780_read16 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_charge_now(struct ds2780_device_info *dev_info,
 int *charge_now)
{
 int ret;
 u16 charge_raw;
 ret = ds2780_read16(dev_info, &charge_raw, DS2780_RAAC_MSB_REG);
 if (ret < 0)
  return ret;

 *charge_now = charge_raw * 1600;
 return 0;
}
