
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pmx_bank {int dummy; } ;
struct meson_pinctrl {int reg_mux; } ;


 int meson_axg_pmx_get_bank (struct meson_pinctrl*,unsigned int,struct meson_pmx_bank**) ;
 int meson_pmx_calc_reg_and_offset (struct meson_pmx_bank*,unsigned int,int*,int*) ;
 int regmap_update_bits (int ,int,int,unsigned int) ;

__attribute__((used)) static int meson_axg_pmx_update_function(struct meson_pinctrl *pc,
   unsigned int pin, unsigned int func)
{
 int ret;
 int reg;
 int offset;
 struct meson_pmx_bank *bank;

 ret = meson_axg_pmx_get_bank(pc, pin, &bank);
 if (ret)
  return ret;

 meson_pmx_calc_reg_and_offset(bank, pin, &reg, &offset);

 ret = regmap_update_bits(pc->reg_mux, reg << 2,
  0xf << offset, (func & 0xf) << offset);

 return ret;
}
