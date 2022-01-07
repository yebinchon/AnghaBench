
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int i2c; } ;


 int EINVAL ;
 int PM8607_CHG_CTRL2 ;
 int pm860x_reg_read (int ,int ) ;
 int pm860x_set_bits (int ,int ,int,int) ;

__attribute__((used)) static int set_charger_current(struct pm860x_battery_info *info, int data,
          int *old)
{
 int ret;

 if (data < 50 || data > 1600 || !old)
  return -EINVAL;

 data = ((data - 50) / 50) & 0x1f;
 *old = pm860x_reg_read(info->i2c, PM8607_CHG_CTRL2);
 *old = (*old & 0x1f) * 50 + 50;
 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL2, 0x1f, data);
 if (ret < 0)
  return ret;
 return 0;
}
