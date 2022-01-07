
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int name; struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int dev; } ;


 int armada_37xx_gpio_direction_input (struct gpio_chip*,unsigned int) ;
 int armada_37xx_gpio_direction_output (struct gpio_chip*,unsigned int,int ) ;
 int dev_dbg (int ,char*,unsigned int,int ,unsigned int,char*) ;
 struct armada_37xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int armada_37xx_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
           struct pinctrl_gpio_range *range,
           unsigned int offset, bool input)
{
 struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct gpio_chip *chip = range->gc;

 dev_dbg(info->dev, "gpio_direction for pin %u as %s-%d to %s\n",
  offset, range->name, offset, input ? "input" : "output");

 if (input)
  armada_37xx_gpio_direction_input(chip, offset);
 else
  armada_37xx_gpio_direction_output(chip, offset, 0);

 return 0;
}
