
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pullup_pin; int pullup_active_low; } ;
struct at91_udc {TYPE_1__ board; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void at91rm9200_udc_pullup(struct at91_udc *udc, int is_on)
{
 int active = !udc->board.pullup_active_low;

 if (is_on)
  gpio_set_value(udc->board.pullup_pin, active);
 else
  gpio_set_value(udc->board.pullup_pin, !active);
}
