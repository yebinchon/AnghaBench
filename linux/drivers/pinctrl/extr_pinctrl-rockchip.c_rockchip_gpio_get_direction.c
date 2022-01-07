
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pin_bank {int clk; scalar_t__ reg_base; int name; TYPE_1__* drvdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (unsigned int) ;
 scalar_t__ GPIO_SWPORT_DDR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,int ) ;
 struct rockchip_pin_bank* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int rockchip_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct rockchip_pin_bank *bank = gpiochip_get_data(chip);
 u32 data;
 int ret;

 ret = clk_enable(bank->clk);
 if (ret < 0) {
  dev_err(bank->drvdata->dev,
   "failed to enable clock for bank %s\n", bank->name);
  return ret;
 }
 data = readl_relaxed(bank->reg_base + GPIO_SWPORT_DDR);
 clk_disable(bank->clk);

 return !(data & BIT(offset));
}
