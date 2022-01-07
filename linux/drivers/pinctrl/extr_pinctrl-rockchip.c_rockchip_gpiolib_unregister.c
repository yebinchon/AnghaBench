
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pinctrl {struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int nr_banks; struct rockchip_pin_bank* pin_banks; } ;
struct rockchip_pin_bank {int gpio_chip; int valid; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;

__attribute__((used)) static int rockchip_gpiolib_unregister(struct platform_device *pdev,
      struct rockchip_pinctrl *info)
{
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct rockchip_pin_bank *bank = ctrl->pin_banks;
 int i;

 for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
  if (!bank->valid)
   continue;
  gpiochip_remove(&bank->gpio_chip);
 }

 return 0;
}
