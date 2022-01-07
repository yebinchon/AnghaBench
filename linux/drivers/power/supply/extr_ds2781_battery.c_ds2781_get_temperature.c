
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2781_device_info {int dummy; } ;


 int DS2781_TEMP_MSB ;
 int w1_ds2781_read (struct ds2781_device_info*,char*,int ,int) ;

__attribute__((used)) static int ds2781_get_temperature(struct ds2781_device_info *dev_info,
 int *temp)
{
 int ret;
 char val[2];
 int temp_raw;

 ret = w1_ds2781_read(dev_info, val, DS2781_TEMP_MSB, 2 * sizeof(u8));
 if (ret < 0)
  return ret;
 temp_raw = ((val[0]) << 3) |
  (val[1] >> 5);
 *temp = temp_raw + (temp_raw / 4);

 return 0;
}
