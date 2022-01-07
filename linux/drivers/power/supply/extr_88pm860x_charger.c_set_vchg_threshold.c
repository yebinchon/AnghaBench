
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int dev; int i2c; } ;


 int PM8607_VCHG_HIGHTH ;
 int PM8607_VCHG_LOWTH ;
 int dev_dbg (int ,char*,int,int) ;
 int pm860x_reg_write (int ,int ,int) ;

__attribute__((used)) static void set_vchg_threshold(struct pm860x_charger_info *info,
          int min, int max)
{
 int data;


 if (min <= 0)
  data = 0;
 else
  data = (min << 5) / 1125;
 pm860x_reg_write(info->i2c, PM8607_VCHG_LOWTH, data);
 dev_dbg(info->dev, "VCHG_LOWTH:%dmv, 0x%x\n", min, data);

 if (max <= 0)
  data = 0xff;
 else
  data = (max << 5) / 1125;
 pm860x_reg_write(info->i2c, PM8607_VCHG_HIGHTH, data);
 dev_dbg(info->dev, "VCHG_HIGHTH:%dmv, 0x%x\n", max, data);

}
