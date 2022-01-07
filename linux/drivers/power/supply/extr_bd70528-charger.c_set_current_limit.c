
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int regmap; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int BD70528_MASK_CHG_DCIN_ILIM ;
 int BD70528_REG_CHG_DCIN_ILIM ;
 int EINVAL ;
 unsigned int MAX_CURR_LIMIT_SEL ;
 unsigned int MIN_CURR_LIMIT_SEL ;
 int * current_limit_ranges ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int find_selector_for_value_low (int *,int ,int,unsigned int*,int*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int set_current_limit(struct bd70528_psy *bdpsy, int ma)
{
 unsigned int reg;
 int ret = 0, tmpret;
 bool found;

 if (ma > 500) {
  dev_warn(bdpsy->dev,
    "Requested current limit %u exceed maximum (500mA)\n",
    ma);
  reg = MAX_CURR_LIMIT_SEL;
  goto set;
 }
 if (ma < 5) {
  dev_err(bdpsy->dev,
   "Requested current limit %u smaller than min (5mA)\n",
   ma);
  reg = MIN_CURR_LIMIT_SEL;
  ret = -EINVAL;
  goto set;
 }

 ret = find_selector_for_value_low(&current_limit_ranges[0],
       ARRAY_SIZE(current_limit_ranges), ma,
       &reg, &found);
 if (ret) {
  reg = MIN_CURR_LIMIT_SEL;
  goto set;
 }
 if (!found) {

  dev_warn(bdpsy->dev, "Unsupported current limit %umA\n",
    ma);
 }

set:
 tmpret = regmap_update_bits(bdpsy->regmap,
        BD70528_REG_CHG_DCIN_ILIM,
        BD70528_MASK_CHG_DCIN_ILIM, reg);

 if (!ret)
  ret = tmpret;

 return ret;
}
