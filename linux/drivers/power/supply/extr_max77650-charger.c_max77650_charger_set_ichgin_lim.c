
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_charger_data {int map; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int MAX77650_CHARGER_ICHGIN_LIM_MASK ;
 int MAX77650_CHARGER_ICHGIN_LIM_SHIFT (int) ;
 int MAX77650_REG_CNFG_CHG_B ;
 unsigned int* max77650_charger_ichgin_lim_table ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77650_charger_set_ichgin_lim(struct max77650_charger_data *chg,
        unsigned int val)
{
 int i, rv;

 for (i = 0; i < ARRAY_SIZE(max77650_charger_ichgin_lim_table); i++) {
  if (val == max77650_charger_ichgin_lim_table[i]) {
   rv = regmap_update_bits(chg->map,
     MAX77650_REG_CNFG_CHG_B,
     MAX77650_CHARGER_ICHGIN_LIM_MASK,
     MAX77650_CHARGER_ICHGIN_LIM_SHIFT(i));
   if (rv)
    return rv;

   return 0;
  }
 }

 return -EINVAL;
}
