
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_pfc {TYPE_2__* info; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {scalar_t__ enum_id; } ;


 int EINVAL ;
 struct sh_pfc* gpio_to_pfc (struct gpio_chip*) ;
 int pinctrl_gpio_request (unsigned int) ;
 int sh_pfc_get_pin_index (struct sh_pfc*,unsigned int) ;

__attribute__((used)) static int gpio_pin_request(struct gpio_chip *gc, unsigned offset)
{
 struct sh_pfc *pfc = gpio_to_pfc(gc);
 int idx = sh_pfc_get_pin_index(pfc, offset);

 if (idx < 0 || pfc->info->pins[idx].enum_id == 0)
  return -EINVAL;

 return pinctrl_gpio_request(offset);
}
