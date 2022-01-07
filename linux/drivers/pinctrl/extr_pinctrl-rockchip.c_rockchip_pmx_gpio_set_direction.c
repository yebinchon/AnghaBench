
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pinctrl {int dev; } ;
struct pinctrl_gpio_range {int name; struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {unsigned int base; } ;


 int _rockchip_pmx_gpio_set_direction (struct gpio_chip*,unsigned int,int) ;
 int dev_dbg (int ,char*,unsigned int,int ,int,char*) ;
 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rockchip_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
           struct pinctrl_gpio_range *range,
           unsigned offset, bool input)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct gpio_chip *chip;
 int pin;

 chip = range->gc;
 pin = offset - chip->base;
 dev_dbg(info->dev, "gpio_direction for pin %u as %s-%d to %s\n",
   offset, range->name, pin, input ? "input" : "output");

 return _rockchip_pmx_gpio_set_direction(chip, offset - chip->base,
      input);
}
