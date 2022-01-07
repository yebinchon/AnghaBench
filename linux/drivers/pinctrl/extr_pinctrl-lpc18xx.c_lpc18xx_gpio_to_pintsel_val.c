
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int LPC18XX_GPIO_PINS_PER_PORT ;
 unsigned int LPC18XX_SCU_PINTSEL_PORT_SHIFT ;

__attribute__((used)) static u32 lpc18xx_gpio_to_pintsel_val(int gpio)
{
 unsigned int gpio_port, gpio_pin;

 gpio_port = gpio / LPC18XX_GPIO_PINS_PER_PORT;
 gpio_pin = gpio % LPC18XX_GPIO_PINS_PER_PORT;

 return gpio_pin | (gpio_port << LPC18XX_SCU_PINTSEL_PORT_SHIFT);
}
