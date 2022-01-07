
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {scalar_t__ base; } ;
struct TYPE_2__ {int num_pins; scalar_t__* pins; unsigned int config; } ;


 unsigned int ARTPEC6_CONFIG_0 ;
 scalar_t__ ARTPEC6_MAX_MUXABLE ;
 unsigned int ARTPEC6_PINMUX_SEL_MASK ;
 unsigned int ARTPEC6_PINMUX_SEL_SHIFT ;
 TYPE_1__* artpec6_pin_groups ;
 int artpec6_pmx_get_fname (struct pinctrl_dev*,unsigned int) ;
 unsigned int artpec6_pmx_reg_offset (scalar_t__) ;
 struct artpec6_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned int readl (scalar_t__) ;
 int strcmp (int ,char*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void artpec6_pmx_select_func(struct pinctrl_dev *pctldev,
        unsigned int function, unsigned int group,
        bool enable)
{
 unsigned int regval, val;
 unsigned int reg;
 int i;
 struct artpec6_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 for (i = 0; i < artpec6_pin_groups[group].num_pins; i++) {




  if (artpec6_pin_groups[group].pins[i] > ARTPEC6_MAX_MUXABLE)
   continue;

  if (!strcmp(artpec6_pmx_get_fname(pctldev, function), "gpio")) {

   val = ARTPEC6_CONFIG_0 << ARTPEC6_PINMUX_SEL_SHIFT;
  } else {
   if (enable)
    val = artpec6_pin_groups[group].config
     << ARTPEC6_PINMUX_SEL_SHIFT;
   else
    val = ARTPEC6_CONFIG_0
     << ARTPEC6_PINMUX_SEL_SHIFT;
  }

  reg = artpec6_pmx_reg_offset(artpec6_pin_groups[group].pins[i]);

  regval = readl(pmx->base + reg);
  regval &= ~ARTPEC6_PINMUX_SEL_MASK;
  regval |= val;
  writel(regval, pmx->base + reg);
 }
}
