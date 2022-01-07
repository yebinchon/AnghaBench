
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int power_gpio; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int wl1251_spi_set_power(struct wl1251 *wl, bool enable)
{
 if (gpio_is_valid(wl->power_gpio))
  gpio_set_value(wl->power_gpio, enable);

 return 0;
}
