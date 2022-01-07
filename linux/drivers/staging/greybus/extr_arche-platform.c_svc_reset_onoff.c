
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int gpiod_set_raw_value (struct gpio_desc*,int) ;

__attribute__((used)) static inline void svc_reset_onoff(struct gpio_desc *gpio, bool onoff)
{
 gpiod_set_raw_value(gpio, onoff);
}
