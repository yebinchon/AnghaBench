
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx6110_data {int regmap; struct rtc_device* rtc; } ;
struct rtc_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int RX6110_BIT_EXT_TE ;
 int RX6110_BIT_FLAG_AF ;
 int RX6110_BIT_FLAG_TF ;
 int RX6110_BIT_FLAG_UF ;
 int RX6110_BIT_FLAG_VLF ;
 int RX6110_REG_EXT ;
 int RX6110_REG_FLAG ;
 int dev_warn (int *,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int rx6110_default_regs ;

__attribute__((used)) static int rx6110_init(struct rx6110_data *rx6110)
{
 struct rtc_device *rtc = rx6110->rtc;
 int flags;
 int ret;

 ret = regmap_update_bits(rx6110->regmap, RX6110_REG_EXT,
     RX6110_BIT_EXT_TE, 0);
 if (ret)
  return ret;

 ret = regmap_register_patch(rx6110->regmap, rx6110_default_regs,
        ARRAY_SIZE(rx6110_default_regs));
 if (ret)
  return ret;

 ret = regmap_read(rx6110->regmap, RX6110_REG_FLAG, &flags);
 if (ret)
  return ret;


 if ((flags & RX6110_BIT_FLAG_VLF))
  dev_warn(&rtc->dev, "Voltage low, data loss detected.\n");


 if (flags & RX6110_BIT_FLAG_AF)
  dev_warn(&rtc->dev, "An alarm may have been missed.\n");


 if (flags & RX6110_BIT_FLAG_TF)
  dev_warn(&rtc->dev, "Periodic timer was detected\n");


 if (flags & RX6110_BIT_FLAG_UF)
  dev_warn(&rtc->dev, "Update timer was detected\n");


 ret = regmap_update_bits(rx6110->regmap, RX6110_REG_FLAG,
     RX6110_BIT_FLAG_AF |
     RX6110_BIT_FLAG_UF |
     RX6110_BIT_FLAG_TF,
     0);

 return ret;
}
