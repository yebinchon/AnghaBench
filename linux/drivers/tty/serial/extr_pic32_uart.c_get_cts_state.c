
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sport {int cts_gpio; } ;


 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;

__attribute__((used)) static unsigned int get_cts_state(struct pic32_sport *sport)
{

 if (gpio_is_valid(sport->cts_gpio))
  return !gpio_get_value(sport->cts_gpio);

 return 1;
}
