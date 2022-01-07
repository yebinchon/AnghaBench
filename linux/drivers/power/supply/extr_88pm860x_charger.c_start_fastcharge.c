
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_charger_info {int i2c; int i2c_8606; int dev; } ;


 int CC1_ITERM_60MA ;
 int CC1_MODE_FASTCHARGE ;
 int CC1_MODE_OFF ;
 int CC1_VFCHG_4_2V ;
 int CC2_ICHG_500MA ;
 int CC3_270MIN_TIMEOUT ;
 int CC4_BTEMP_MON_EN ;
 int CC4_IFCHG_MON_EN ;
 int CC6_BAT_OV_EN ;
 int CC6_BAT_UV_EN ;
 int CC6_UV_VBAT_SET ;
 int CC7_BAT_REM_EN ;
 int CC7_IFSM_EN ;
 int PM8606_PREREGULATORA ;
 int PM8607_CHG_CTRL1 ;
 int PM8607_CHG_CTRL2 ;
 int PM8607_CHG_CTRL3 ;
 int PM8607_CHG_CTRL4 ;
 int PM8607_CHG_CTRL6 ;
 int PM8607_CHG_CTRL7 ;
 int PREREG1_540MA ;
 int PREREG1_VSYS_4_5V ;
 int VCHG_NORMAL_HIGH ;
 int VCHG_NORMAL_LOW ;
 int dev_dbg (int ,char*) ;
 int pm860x_reg_write (int ,int ,int) ;
 int pm860x_set_bits (int ,int ,int,int) ;
 int set_vchg_threshold (struct pm860x_charger_info*,int ,int ) ;

__attribute__((used)) static int start_fastcharge(struct pm860x_charger_info *info)
{
 int ret;

 dev_dbg(info->dev, "Start Fast-charging!\n");


 ret = pm860x_reg_write(info->i2c, PM8607_CHG_CTRL1,
          CC1_MODE_OFF | CC1_ITERM_60MA |
          CC1_VFCHG_4_2V);
 if (ret < 0)
  goto out;
 ret = pm860x_reg_write(info->i2c_8606, PM8606_PREREGULATORA,
          PREREG1_540MA | PREREG1_VSYS_4_5V);
 if (ret < 0)
  goto out;
 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL2, 0x1f,
         CC2_ICHG_500MA);
 if (ret < 0)
  goto out;

 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL3, (0xf << 4),
         CC3_270MIN_TIMEOUT);
 if (ret < 0)
  goto out;

 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL4,
         CC4_IFCHG_MON_EN | CC4_BTEMP_MON_EN,
         CC4_IFCHG_MON_EN | CC4_BTEMP_MON_EN);
 if (ret < 0)
  goto out;
 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL6,
         CC6_BAT_OV_EN | CC6_BAT_UV_EN |
         CC6_UV_VBAT_SET,
         CC6_BAT_OV_EN | CC6_BAT_UV_EN |
         CC6_UV_VBAT_SET);
 if (ret < 0)
  goto out;
 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL7,
         CC7_BAT_REM_EN | CC7_IFSM_EN,
         CC7_BAT_REM_EN | CC7_IFSM_EN);
 if (ret < 0)
  goto out;

 ret = pm860x_set_bits(info->i2c, PM8607_CHG_CTRL1, 3,
         CC1_MODE_FASTCHARGE);

 set_vchg_threshold(info, VCHG_NORMAL_LOW, VCHG_NORMAL_HIGH);
out:
 return ret;
}
