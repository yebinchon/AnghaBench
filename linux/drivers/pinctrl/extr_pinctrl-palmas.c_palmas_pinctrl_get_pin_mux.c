
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_pingroup {scalar_t__ mux_reg_base; unsigned int mux_reg_mask; unsigned int mux_bit_shift; int mux_reg_add; } ;
struct palmas_pctrl_chip_info {int num_pin_groups; unsigned int* pins_current_opt; int dev; int palmas; struct palmas_pingroup* pin_groups; } ;


 scalar_t__ PALMAS_NONE_BASE ;
 int dev_err (int ,char*,int ,int) ;
 int palmas_read (int ,scalar_t__,int ,unsigned int*) ;

__attribute__((used)) static int palmas_pinctrl_get_pin_mux(struct palmas_pctrl_chip_info *pci)
{
 const struct palmas_pingroup *g;
 unsigned int val;
 int ret;
 int i;

 for (i = 0; i < pci->num_pin_groups; ++i) {
  g = &pci->pin_groups[i];
  if (g->mux_reg_base == PALMAS_NONE_BASE) {
   pci->pins_current_opt[i] = 0;
   continue;
  }
  ret = palmas_read(pci->palmas, g->mux_reg_base,
    g->mux_reg_add, &val);
  if (ret < 0) {
   dev_err(pci->dev, "mux_reg 0x%02x read failed: %d\n",
     g->mux_reg_add, ret);
   return ret;
  }
  val &= g->mux_reg_mask;
  pci->pins_current_opt[i] = val >> g->mux_bit_shift;
 }
 return 0;
}
