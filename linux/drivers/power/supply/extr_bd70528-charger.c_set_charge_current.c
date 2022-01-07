
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int regmap; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int BD70528_MASK_CHG_CHG_CURR ;
 int BD70528_REG_CHG_CHG_CURR_COLD ;
 int BD70528_REG_CHG_CHG_CURR_WARM ;
 int EINVAL ;
 unsigned int MAX_COLD_CHG_CURR_SEL ;
 unsigned int MAX_WARM_CHG_CURR_SEL ;
 unsigned int MIN_CHG_CURR_SEL ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int find_selector_for_value_low (int *,int ,int,unsigned int*,int*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int * warm_charge_curr ;

__attribute__((used)) static int set_charge_current(struct bd70528_psy *bdpsy, int ma)
{
 unsigned int reg;
 int ret = 0, tmpret;
 bool found;

 if (ma > 500) {
  dev_warn(bdpsy->dev,
    "Requested charge current %u exceed maximum (500mA)\n",
    ma);
  reg = MAX_WARM_CHG_CURR_SEL;
  goto set;
 }
 if (ma < 10) {
  dev_err(bdpsy->dev,
   "Requested charge current %u smaller than min (10mA)\n",
    ma);
  reg = MIN_CHG_CURR_SEL;
  ret = -EINVAL;
  goto set;
 }

 ret = find_selector_for_value_low(&warm_charge_curr[0],
       ARRAY_SIZE(warm_charge_curr), ma,
       &reg, &found);
 if (ret) {
  reg = MIN_CHG_CURR_SEL;
  goto set;
 }
 if (!found) {

  dev_warn(bdpsy->dev,
    "Unsupported charge current %u mA\n", ma);
 }
set:

 tmpret = regmap_update_bits(bdpsy->regmap,
        BD70528_REG_CHG_CHG_CURR_WARM,
        BD70528_MASK_CHG_CHG_CURR, reg);
 if (tmpret)
  dev_err(bdpsy->dev,
   "Charge current write failure (%d)\n", tmpret);

 if (reg > MAX_COLD_CHG_CURR_SEL)
  reg = MAX_COLD_CHG_CURR_SEL;

 if (!tmpret)
  tmpret = regmap_update_bits(bdpsy->regmap,
         BD70528_REG_CHG_CHG_CURR_COLD,
         BD70528_MASK_CHG_CHG_CURR, reg);

 if (!ret)
  ret = tmpret;

 return ret;
}
