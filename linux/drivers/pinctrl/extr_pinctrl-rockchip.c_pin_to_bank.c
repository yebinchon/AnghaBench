
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pinctrl {TYPE_1__* ctrl; } ;
struct rockchip_pin_bank {unsigned int pin_base; unsigned int nr_pins; } ;
struct TYPE_2__ {struct rockchip_pin_bank* pin_banks; } ;



__attribute__((used)) static struct rockchip_pin_bank *pin_to_bank(struct rockchip_pinctrl *info,
        unsigned pin)
{
 struct rockchip_pin_bank *b = info->ctrl->pin_banks;

 while (pin >= (b->pin_base + b->nr_pins))
  b++;

 return b;
}
