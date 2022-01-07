
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int i2c; } ;


 int EINVAL ;


 int PM8607_LDO5 ;
 int PM8607_VBAT_MEAS1 ;
 int measure_12bit_voltage (struct pm860x_battery_info*,int ,int*) ;
 int pm860x_bulk_read (int ,int ,int,unsigned char*) ;

__attribute__((used)) static int measure_vbatt(struct pm860x_battery_info *info, int state,
    int *data)
{
 unsigned char buf[5];
 int ret;

 switch (state) {
 case 129:
  ret = measure_12bit_voltage(info, PM8607_VBAT_MEAS1, data);
  if (ret)
   return ret;

  *data *= 3;
  break;
 case 128:
  ret = pm860x_bulk_read(info->i2c, PM8607_LDO5, 5, buf);
  if (ret < 0)
   return ret;
  ret = ((buf[4] >> 6) << 10) | ((buf[3] >> 6) << 8)
      | ((buf[2] >> 6) << 6) | ((buf[1] >> 6) << 4)
      | (buf[0] >> 4);

  *data = ((*data & 0xff) * 27 * 25) >> 9;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
