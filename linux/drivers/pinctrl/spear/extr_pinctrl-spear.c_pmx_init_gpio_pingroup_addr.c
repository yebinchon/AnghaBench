
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spear_gpio_pingroup {int nmuxregs; TYPE_1__* muxregs; } ;
struct TYPE_2__ {int reg; } ;



void pmx_init_gpio_pingroup_addr(struct spear_gpio_pingroup *gpio_pingroup,
     unsigned count, u16 reg)
{
 int i, j;

 for (i = 0; i < count; i++)
  for (j = 0; j < gpio_pingroup[i].nmuxregs; j++)
   gpio_pingroup[i].muxregs[j].reg = reg;
}
