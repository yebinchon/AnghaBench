
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pps_gpio_device_data {int echo_pin; } ;


 int echo_timer ;
 struct pps_gpio_device_data* from_timer (struct pps_gpio_device_data const*,struct timer_list*,int ) ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void pps_gpio_echo_timer_callback(struct timer_list *t)
{
 const struct pps_gpio_device_data *info;

 info = from_timer(info, t, echo_timer);

 gpiod_set_value(info->echo_pin, 0);
}
