
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pmx_bank {unsigned int first; int reg; int offset; } ;



__attribute__((used)) static int meson_pmx_calc_reg_and_offset(struct meson_pmx_bank *bank,
   unsigned int pin, unsigned int *reg,
   unsigned int *offset)
{
 int shift;

 shift = pin - bank->first;

 *reg = bank->reg + (bank->offset + (shift << 2)) / 32;
 *offset = (bank->offset + (shift << 2)) % 32;

 return 0;
}
