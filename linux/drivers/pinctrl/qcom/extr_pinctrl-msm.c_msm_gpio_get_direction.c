
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_pingroup {int oe_bit; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;


 int BIT (int ) ;
 struct msm_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int msm_readl_ctl (struct msm_pinctrl*,struct msm_pingroup const*) ;

__attribute__((used)) static int msm_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct msm_pinctrl *pctrl = gpiochip_get_data(chip);
 const struct msm_pingroup *g;
 u32 val;

 g = &pctrl->soc->groups[offset];

 val = msm_readl_ctl(pctrl, g);


 return val & BIT(g->oe_bit) ? 0 : 1;
}
