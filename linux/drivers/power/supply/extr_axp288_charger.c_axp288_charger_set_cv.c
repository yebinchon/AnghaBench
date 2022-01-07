
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct axp288_chrg_info {int cv; int regmap; } ;


 int AXP20X_CHRG_CTRL1 ;
 int CHRG_CCCV_CV_4100MV ;
 int CHRG_CCCV_CV_4150MV ;
 int CHRG_CCCV_CV_4200MV ;
 int CHRG_CCCV_CV_4350MV ;
 int CHRG_CCCV_CV_BIT_POS ;
 int CHRG_CCCV_CV_MASK ;
 int CV_4100MV ;
 int CV_4150MV ;
 int CV_4200MV ;
 int CV_4350MV ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static inline int axp288_charger_set_cv(struct axp288_chrg_info *info, int cv)
{
 u8 reg_val;
 int ret;

 if (cv <= CV_4100MV) {
  reg_val = CHRG_CCCV_CV_4100MV;
  cv = CV_4100MV;
 } else if (cv <= CV_4150MV) {
  reg_val = CHRG_CCCV_CV_4150MV;
  cv = CV_4150MV;
 } else if (cv <= CV_4200MV) {
  reg_val = CHRG_CCCV_CV_4200MV;
  cv = CV_4200MV;
 } else {
  reg_val = CHRG_CCCV_CV_4350MV;
  cv = CV_4350MV;
 }

 reg_val = reg_val << CHRG_CCCV_CV_BIT_POS;

 ret = regmap_update_bits(info->regmap,
    AXP20X_CHRG_CTRL1,
    CHRG_CCCV_CV_MASK, reg_val);

 if (ret >= 0)
  info->cv = cv;

 return ret;
}
