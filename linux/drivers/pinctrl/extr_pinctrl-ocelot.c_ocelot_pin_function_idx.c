
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocelot_pinctrl {TYPE_2__* desc; } ;
struct ocelot_pin_caps {unsigned int* functions; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct ocelot_pin_caps* drv_data; } ;


 int OCELOT_FUNC_PER_PIN ;

__attribute__((used)) static int ocelot_pin_function_idx(struct ocelot_pinctrl *info,
       unsigned int pin, unsigned int function)
{
 struct ocelot_pin_caps *p = info->desc->pins[pin].drv_data;
 int i;

 for (i = 0; i < OCELOT_FUNC_PER_PIN; i++) {
  if (function == p->functions[i])
   return i;
 }

 return -1;
}
