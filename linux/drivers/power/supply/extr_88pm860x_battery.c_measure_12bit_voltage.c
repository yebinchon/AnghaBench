
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int i2c; } ;


 int pm860x_bulk_read (int ,int,int,unsigned char*) ;

__attribute__((used)) static int measure_12bit_voltage(struct pm860x_battery_info *info,
     int offset, int *data)
{
 unsigned char buf[2];
 int ret;

 ret = pm860x_bulk_read(info->i2c, offset, 2, buf);
 if (ret < 0)
  return ret;

 *data = ((buf[0] & 0xff) << 4) | (buf[1] & 0x0f);

 *data = ((*data & 0xfff) * 9 * 25) >> 9;
 return 0;
}
