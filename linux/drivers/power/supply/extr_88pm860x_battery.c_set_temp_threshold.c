
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int dev; int i2c; } ;


 int PM8607_GPADC1_HIGHTH ;
 int PM8607_GPADC1_LOWTH ;
 int dev_dbg (int ,char*,int,int) ;
 int pm860x_reg_write (int ,int ,int) ;

__attribute__((used)) static void set_temp_threshold(struct pm860x_battery_info *info,
          int min, int max)
{
 int data;


 if (min <= 0)
  data = 0;
 else
  data = (min << 8) / 1800;
 pm860x_reg_write(info->i2c, PM8607_GPADC1_HIGHTH, data);
 dev_dbg(info->dev, "TEMP_HIGHTH : min: %d, 0x%x\n", min, data);

 if (max <= 0)
  data = 0xff;
 else
  data = (max << 8) / 1800;
 pm860x_reg_write(info->i2c, PM8607_GPADC1_LOWTH, data);
 dev_dbg(info->dev, "TEMP_LOWTH:max : %d, 0x%x\n", max, data);
}
