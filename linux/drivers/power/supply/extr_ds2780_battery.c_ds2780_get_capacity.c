
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2780_device_info {int dummy; } ;


 int DS2780_RARC_REG ;
 int ds2780_read8 (struct ds2780_device_info*,int*,int ) ;

__attribute__((used)) static int ds2780_get_capacity(struct ds2780_device_info *dev_info,
 int *capacity)
{
 int ret;
 u8 raw;

 ret = ds2780_read8(dev_info, &raw, DS2780_RARC_REG);
 if (ret < 0)
  return ret;

 *capacity = raw;
 return raw;
}
