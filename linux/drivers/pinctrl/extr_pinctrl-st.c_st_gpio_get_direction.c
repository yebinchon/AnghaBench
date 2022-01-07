
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pio_control {int dummy; } ;
struct st_gpio_bank {scalar_t__ base; struct st_pio_control pc; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ REG_PIO_PC (int) ;
 unsigned int ST_GPIO_DIRECTION_IN ;
 int ST_PINCONF_UNPACK_OE (unsigned long) ;
 struct st_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int readl (scalar_t__) ;
 unsigned int st_pctl_get_pin_function (struct st_pio_control*,unsigned int) ;
 int st_pinconf_get_direction (struct st_pio_control*,unsigned int,unsigned long*) ;

__attribute__((used)) static int st_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct st_gpio_bank *bank = gpiochip_get_data(chip);
 struct st_pio_control pc = bank->pc;
 unsigned long config;
 unsigned int direction = 0;
 unsigned int function;
 unsigned int value;
 int i = 0;


 function = st_pctl_get_pin_function(&pc, offset);
 if (function) {
  st_pinconf_get_direction(&pc, offset, &config);
  return !ST_PINCONF_UNPACK_OE(config);
 }





 for (i = 0; i <= 2; i++) {
  value = readl(bank->base + REG_PIO_PC(i));
  direction |= ((value >> offset) & 0x1) << i;
 }

 return (direction == ST_GPIO_DIRECTION_IN);
}
