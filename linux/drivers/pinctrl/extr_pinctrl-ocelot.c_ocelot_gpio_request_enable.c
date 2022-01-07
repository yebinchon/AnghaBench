
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {int map; } ;


 int BIT (unsigned int) ;
 int REG_ALT (int,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ocelot_gpio_request_enable(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned int offset)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 unsigned int p = offset % 32;

 regmap_update_bits(info->map, REG_ALT(0, info, offset),
      BIT(p), 0);
 regmap_update_bits(info->map, REG_ALT(1, info, offset),
      BIT(p), 0);

 return 0;
}
