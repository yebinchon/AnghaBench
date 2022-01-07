
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_reg_desc {int reg; unsigned int bit; } ;
struct meson_bank {unsigned int first; struct meson_reg_desc* regs; } ;
typedef enum meson_reg_type { ____Placeholder_meson_reg_type } meson_reg_type ;



__attribute__((used)) static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
       enum meson_reg_type reg_type,
       unsigned int *reg, unsigned int *bit)
{
 struct meson_reg_desc *desc = &bank->regs[reg_type];

 *reg = desc->reg * 4;
 *bit = desc->bit + pin - bank->first;
}
