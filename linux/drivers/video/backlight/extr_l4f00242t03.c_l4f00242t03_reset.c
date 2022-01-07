
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (unsigned int,int) ;
 int mdelay (int) ;
 int pr_debug (char*) ;

__attribute__((used)) static void l4f00242t03_reset(unsigned int gpio)
{
 pr_debug("l4f00242t03_reset.\n");
 gpio_set_value(gpio, 1);
 mdelay(100);
 gpio_set_value(gpio, 0);
 mdelay(10);
 gpio_set_value(gpio, 1);
 mdelay(20);
}
