
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5061_state {int regmap; } ;


 int ADP5061_TERM_SET ;
 int ADP5061_TERM_SET_VTRM_MODE (int) ;
 int ADP5061_TERM_SET_VTRM_MSK ;
 int ARRAY_SIZE (int ) ;
 int adp5061_get_array_index (int ,int ,int) ;
 int adp5061_vmax ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adp5061_set_max_voltage(struct adp5061_state *st, int val)
{
 int vmax_index;


 val /= 1000;
 if (val > 4500)
  val = 4500;

 vmax_index = adp5061_get_array_index(adp5061_vmax,
          ARRAY_SIZE(adp5061_vmax), val);
 if (vmax_index < 0)
  return vmax_index;

 vmax_index += 0x0F;

 return regmap_update_bits(st->regmap, ADP5061_TERM_SET,
      ADP5061_TERM_SET_VTRM_MSK,
      ADP5061_TERM_SET_VTRM_MODE(vmax_index));
}
