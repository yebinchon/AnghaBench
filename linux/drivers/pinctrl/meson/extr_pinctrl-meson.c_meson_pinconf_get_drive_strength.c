
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct meson_pinctrl {int reg_ds; } ;
struct meson_bank {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;




 int REG_DS ;
 int meson_calc_reg_and_bit (struct meson_bank*,unsigned int,int ,unsigned int*,unsigned int*) ;
 int meson_get_bank (struct meson_pinctrl*,unsigned int,struct meson_bank**) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int meson_pinconf_get_drive_strength(struct meson_pinctrl *pc,
         unsigned int pin,
         u16 *drive_strength_ua)
{
 struct meson_bank *bank;
 unsigned int reg, bit;
 unsigned int val;
 int ret;

 if (!pc->reg_ds)
  return -ENOTSUPP;

 ret = meson_get_bank(pc, pin, &bank);
 if (ret)
  return ret;

 meson_calc_reg_and_bit(bank, pin, REG_DS, &reg, &bit);

 ret = regmap_read(pc->reg_ds, reg, &val);
 if (ret)
  return ret;

 switch ((val >> bit) & 0x3) {
 case 128:
  *drive_strength_ua = 500;
  break;
 case 131:
  *drive_strength_ua = 2500;
  break;
 case 130:
  *drive_strength_ua = 3000;
  break;
 case 129:
  *drive_strength_ua = 4000;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
