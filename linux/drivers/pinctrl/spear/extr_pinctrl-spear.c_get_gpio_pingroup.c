
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spear_pmx {TYPE_1__* machdata; } ;
struct spear_gpio_pingroup {int npins; unsigned int* pins; } ;
struct TYPE_2__ {int ngpio_pingroups; struct spear_gpio_pingroup* gpio_pingroups; } ;



__attribute__((used)) static struct spear_gpio_pingroup *get_gpio_pingroup(struct spear_pmx *pmx,
  unsigned pin)
{
 struct spear_gpio_pingroup *gpio_pingroup;
 int i, j;

 if (!pmx->machdata->gpio_pingroups)
  return ((void*)0);

 for (i = 0; i < pmx->machdata->ngpio_pingroups; i++) {
  gpio_pingroup = &pmx->machdata->gpio_pingroups[i];

  for (j = 0; j < gpio_pingroup->npins; j++) {
   if (gpio_pingroup->pins[j] == pin)
    return gpio_pingroup;
  }
 }

 return ((void*)0);
}
