
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmfx_pinctrl {int stmfx; int gpio_valid_mask; struct pinctrl_dev* pctl_dev; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int GENMASK (int,int) ;
 int STMFX_FUNC_ALTGPIO_HIGH ;
 int STMFX_FUNC_ALTGPIO_LOW ;
 int STMFX_FUNC_GPIO ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin (struct pinctrl_dev*,int) ;
 int stmfx_function_enable (int ,int ) ;

__attribute__((used)) static int stmfx_pinctrl_gpio_function_enable(struct stmfx_pinctrl *pctl)
{
 struct pinctrl_gpio_range *gpio_range;
 struct pinctrl_dev *pctl_dev = pctl->pctl_dev;
 u32 func = STMFX_FUNC_GPIO;

 pctl->gpio_valid_mask = GENMASK(15, 0);

 gpio_range = pinctrl_find_gpio_range_from_pin(pctl_dev, 16);
 if (gpio_range) {
  func |= STMFX_FUNC_ALTGPIO_LOW;
  pctl->gpio_valid_mask |= GENMASK(19, 16);
 }

 gpio_range = pinctrl_find_gpio_range_from_pin(pctl_dev, 20);
 if (gpio_range) {
  func |= STMFX_FUNC_ALTGPIO_HIGH;
  pctl->gpio_valid_mask |= GENMASK(23, 20);
 }

 return stmfx_function_enable(pctl->stmfx, func);
}
