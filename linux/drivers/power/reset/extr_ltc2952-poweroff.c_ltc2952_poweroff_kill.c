
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpio_kill; } ;


 int gpiod_set_value (int ,int) ;
 TYPE_1__* ltc2952_data ;

__attribute__((used)) static void ltc2952_poweroff_kill(void)
{
 gpiod_set_value(ltc2952_data->gpio_kill, 1);
}
