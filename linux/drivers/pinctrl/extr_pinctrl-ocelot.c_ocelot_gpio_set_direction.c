
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct ocelot_pinctrl {int map; } ;


 int BIT (unsigned int) ;
 int OCELOT_GPIO_OE ;
 int REG (int ,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ocelot_gpio_set_direction(struct pinctrl_dev *pctldev,
         struct pinctrl_gpio_range *range,
         unsigned int pin, bool input)
{
 struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 unsigned int p = pin % 32;

 regmap_update_bits(info->map, REG(OCELOT_GPIO_OE, info, pin), BIT(p),
      input ? 0 : BIT(p));

 return 0;
}
