
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (int,int) ;

__attribute__((used)) static inline void buck1_gpio_set(int gpio1, int gpio2, int v)
{
 gpio_set_value(gpio1, v & 0x1);
 gpio_set_value(gpio2, (v >> 1) & 0x1);
}
