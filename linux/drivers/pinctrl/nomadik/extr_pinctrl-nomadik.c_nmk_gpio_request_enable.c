
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {struct gpio_chip* gc; } ;
struct pinctrl_dev {int dummy; } ;
struct nmk_pinctrl {int dev; } ;
struct nmk_gpio_chip {int clk; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int NMK_GPIO_ALT_GPIO ;
 unsigned int NMK_GPIO_PER_CHIP ;
 int __nmk_gpio_set_mode (struct nmk_gpio_chip*,unsigned int,int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 struct nmk_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct nmk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nmk_gpio_request_enable(struct pinctrl_dev *pctldev,
       struct pinctrl_gpio_range *range,
       unsigned offset)
{
 struct nmk_pinctrl *npct = pinctrl_dev_get_drvdata(pctldev);
 struct nmk_gpio_chip *nmk_chip;
 struct gpio_chip *chip;
 unsigned bit;

 if (!range) {
  dev_err(npct->dev, "invalid range\n");
  return -EINVAL;
 }
 if (!range->gc) {
  dev_err(npct->dev, "missing GPIO chip in range\n");
  return -EINVAL;
 }
 chip = range->gc;
 nmk_chip = gpiochip_get_data(chip);

 dev_dbg(npct->dev, "enable pin %u as GPIO\n", offset);

 clk_enable(nmk_chip->clk);
 bit = offset % NMK_GPIO_PER_CHIP;

 __nmk_gpio_set_mode(nmk_chip, bit, NMK_GPIO_ALT_GPIO);
 clk_disable(nmk_chip->clk);

 return 0;
}
