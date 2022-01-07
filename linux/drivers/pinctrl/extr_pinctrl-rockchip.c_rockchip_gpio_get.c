
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rockchip_pin_bank {int clk; scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIO_EXT_PORT ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct rockchip_pin_bank* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int rockchip_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 u32 data;

 clk_enable(bank->clk);
 data = readl(bank->reg_base + GPIO_EXT_PORT);
 clk_disable(bank->clk);
 data >>= offset;
 data &= 1;
 return data;
}
