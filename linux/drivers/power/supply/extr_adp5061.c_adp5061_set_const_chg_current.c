
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5061_state {int regmap; } ;


 int ADP5061_CHG_CURR ;
 int ADP5061_CHG_CURR_ICHG_MODE (int) ;
 int ADP5061_CHG_CURR_ICHG_MSK ;
 int ADP5061_ICHG_MAX ;
 int ARRAY_SIZE (int ) ;
 int adp5061_const_ichg ;
 int adp5061_get_array_index (int ,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adp5061_set_const_chg_current(struct adp5061_state *st, int val)
{

 int index;


 val /= 1000;
 if (val > ADP5061_ICHG_MAX)
  val = ADP5061_ICHG_MAX;

 index = adp5061_get_array_index(adp5061_const_ichg,
     ARRAY_SIZE(adp5061_const_ichg),
     val);
 if (index < 0)
  return index;

 return regmap_update_bits(st->regmap, ADP5061_CHG_CURR,
      ADP5061_CHG_CURR_ICHG_MSK,
      ADP5061_CHG_CURR_ICHG_MODE(index));
}
