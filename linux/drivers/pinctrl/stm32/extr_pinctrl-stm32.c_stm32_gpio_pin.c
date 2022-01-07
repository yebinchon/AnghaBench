
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STM32_GPIO_PINS_PER_BANK ;

__attribute__((used)) static inline int stm32_gpio_pin(int gpio)
{
 return gpio % STM32_GPIO_PINS_PER_BANK;
}
