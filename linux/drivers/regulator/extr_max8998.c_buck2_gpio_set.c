
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (int,int) ;

__attribute__((used)) static inline void buck2_gpio_set(int gpio, int v)
{
 gpio_set_value(gpio, v & 0x1);
}
