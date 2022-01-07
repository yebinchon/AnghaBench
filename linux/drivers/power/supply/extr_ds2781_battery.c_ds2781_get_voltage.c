
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2781_device_info {int dummy; } ;


 int DS2781_VOLT_MSB ;
 int w1_ds2781_read (struct ds2781_device_info*,char*,int ,int) ;

__attribute__((used)) static int ds2781_get_voltage(struct ds2781_device_info *dev_info,
 int *voltage_uV)
{
 int ret;
 char val[2];
 int voltage_raw;

 ret = w1_ds2781_read(dev_info, val, DS2781_VOLT_MSB, 2 * sizeof(u8));
 if (ret < 0)
  return ret;
 voltage_raw = (val[0] << 3) |
  (val[1] >> 5);



 *voltage_uV = voltage_raw * 9760;

 return 0;
}
