
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ngpio; int base; } ;
struct TYPE_6__ {TYPE_2__ gpio_chip; TYPE_1__** active_gpios; } ;
struct TYPE_4__ {int vg_name; } ;


 int strcmp (char const*,int ) ;
 TYPE_3__ viafb_gpio_config ;

int viafb_gpio_lookup(const char *name)
{
 int i;

 for (i = 0; i < viafb_gpio_config.gpio_chip.ngpio; i++)
  if (!strcmp(name, viafb_gpio_config.active_gpios[i]->vg_name))
   return viafb_gpio_config.gpio_chip.base + i;
 return -1;
}
