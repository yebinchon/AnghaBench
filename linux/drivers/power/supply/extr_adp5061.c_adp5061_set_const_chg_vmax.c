
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5061_state {int regmap; } ;


 int ADP5061_TERM_SET ;
 int ADP5061_TERM_SET_CHG_VLIM_MODE (int) ;
 int ADP5061_TERM_SET_CHG_VLIM_MSK ;
 int ARRAY_SIZE (int ) ;
 int adp5061_const_chg_vmax ;
 int adp5061_get_array_index (int ,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adp5061_set_const_chg_vmax(struct adp5061_state *st, int val)
{
 int index;


 val /= 1000;
 index = adp5061_get_array_index(adp5061_const_chg_vmax,
     ARRAY_SIZE(adp5061_const_chg_vmax),
     val);
 if (index < 0)
  return index;

 return regmap_update_bits(st->regmap, ADP5061_TERM_SET,
      ADP5061_TERM_SET_CHG_VLIM_MSK,
      ADP5061_TERM_SET_CHG_VLIM_MODE(index));
}
