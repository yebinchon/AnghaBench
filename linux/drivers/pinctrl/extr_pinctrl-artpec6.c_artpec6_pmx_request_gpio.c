
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {scalar_t__ base; } ;


 int ARTPEC6_CONFIG_0 ;
 int ARTPEC6_PINMUX_SEL_MASK ;
 int ARTPEC6_PINMUX_SEL_SHIFT ;
 int EINVAL ;
 unsigned int artpec6_pmx_reg_offset (unsigned int) ;
 struct artpec6_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int artpec6_pmx_request_gpio(struct pinctrl_dev *pctldev,
        struct pinctrl_gpio_range *range,
        unsigned int pin)
{
 struct artpec6_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 unsigned int reg = artpec6_pmx_reg_offset(pin);
 u32 val;

 if (pin >= 32)
  return -EINVAL;

 val = readl_relaxed(pmx->base + reg);
 val &= ~ARTPEC6_PINMUX_SEL_MASK;
 val |= ARTPEC6_CONFIG_0 << ARTPEC6_PINMUX_SEL_SHIFT;
 writel_relaxed(val, pmx->base + reg);

 return 0;
}
