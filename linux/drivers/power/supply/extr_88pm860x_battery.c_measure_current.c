
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int i2c; } ;


 int PM8607_IBAT_MEAS1 ;
 int pm860x_bulk_read (int ,int ,int,unsigned char*) ;

__attribute__((used)) static int measure_current(struct pm860x_battery_info *info, int *data)
{
 unsigned char buf[2];
 short s;
 int ret;

 ret = pm860x_bulk_read(info->i2c, PM8607_IBAT_MEAS1, 2, buf);
 if (ret < 0)
  return ret;

 s = ((buf[0] & 0xff) << 8) | (buf[1] & 0xff);

 *data = s >> 3;
 return 0;
}
