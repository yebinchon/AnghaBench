
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct axp288_chrg_info {int max_cc; int cc; int regmap; } ;


 int AXP20X_CHRG_CTRL1 ;
 int CHRG_CCCV_CC_BIT_POS ;
 int CHRG_CCCV_CC_LSB_RES ;
 int CHRG_CCCV_CC_MASK ;
 int CHRG_CCCV_CC_OFFSET ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static inline int axp288_charger_set_cc(struct axp288_chrg_info *info, int cc)
{
 u8 reg_val;
 int ret;

 if (cc < CHRG_CCCV_CC_OFFSET)
  cc = CHRG_CCCV_CC_OFFSET;
 else if (cc > info->max_cc)
  cc = info->max_cc;

 reg_val = (cc - CHRG_CCCV_CC_OFFSET) / CHRG_CCCV_CC_LSB_RES;
 cc = (reg_val * CHRG_CCCV_CC_LSB_RES) + CHRG_CCCV_CC_OFFSET;
 reg_val = reg_val << CHRG_CCCV_CC_BIT_POS;

 ret = regmap_update_bits(info->regmap,
    AXP20X_CHRG_CTRL1,
    CHRG_CCCV_CC_MASK, reg_val);
 if (ret >= 0)
  info->cc = cc;

 return ret;
}
