
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ST_GPIO_PINS_PER_BANK ;

__attribute__((used)) static inline int st_gpio_bank(int gpio)
{
 return gpio/ST_GPIO_PINS_PER_BANK;
}
