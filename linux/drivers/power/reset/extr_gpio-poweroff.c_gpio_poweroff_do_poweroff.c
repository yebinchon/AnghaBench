
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int active_delay ;
 int gpiod_direction_output (int ,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int inactive_delay ;
 int mdelay (int ) ;
 int reset_gpio ;
 int timeout ;

__attribute__((used)) static void gpio_poweroff_do_poweroff(void)
{
 BUG_ON(!reset_gpio);


 gpiod_direction_output(reset_gpio, 1);
 mdelay(active_delay);


 gpiod_set_value_cansleep(reset_gpio, 0);
 mdelay(inactive_delay);


 gpiod_set_value_cansleep(reset_gpio, 1);


 mdelay(timeout);

 WARN_ON(1);
}
