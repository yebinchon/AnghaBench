
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {int map; TYPE_1__* desc; } ;
struct ocelot_pin_caps {int pin; } ;
struct TYPE_4__ {struct ocelot_pin_caps* drv_data; } ;
struct TYPE_3__ {TYPE_2__* pins; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int REG_ALT (int,struct ocelot_pinctrl*,int) ;
 int ocelot_pin_function_idx (struct ocelot_pinctrl*,unsigned int,unsigned int) ;
 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int ocelot_pinmux_set_mux(struct pinctrl_dev *pctldev,
     unsigned int selector, unsigned int group)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct ocelot_pin_caps *pin = info->desc->pins[group].drv_data;
 unsigned int p = pin->pin % 32;
 int f;

 f = ocelot_pin_function_idx(info, group, selector);
 if (f < 0)
  return -EINVAL;
 regmap_update_bits(info->map, REG_ALT(0, info, pin->pin),
      BIT(p), f << p);
 regmap_update_bits(info->map, REG_ALT(1, info, pin->pin),
      BIT(p), f << (p - 1));

 return 0;
}
