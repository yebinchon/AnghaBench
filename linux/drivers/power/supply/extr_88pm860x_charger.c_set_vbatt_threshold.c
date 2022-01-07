
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int dev; int i2c; } ;


 int PM8607_VBAT_HIGHTH ;
 int PM8607_VBAT_LOWTH ;
 int dev_dbg (int ,char*,int,int) ;
 int pm860x_reg_write (int ,int ,int) ;

__attribute__((used)) static void set_vbatt_threshold(struct pm860x_charger_info *info,
    int min, int max)
{
 int data;


 if (min <= 0)
  data = 0;
 else
  data = (min << 5) / 675;
 pm860x_reg_write(info->i2c, PM8607_VBAT_LOWTH, data);
 dev_dbg(info->dev, "VBAT Min:%dmv, LOWTH:0x%x\n", min, data);

 if (max <= 0)
  data = 0xff;
 else
  data = (max << 5) / 675;
 pm860x_reg_write(info->i2c, PM8607_VBAT_HIGHTH, data);
 dev_dbg(info->dev, "VBAT Max:%dmv, HIGHTH:0x%x\n", max, data);

 return;
}
