
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int npins; unsigned int* pins; } ;


 TYPE_1__* npcm7xx_groups ;

__attribute__((used)) static int npcm7xx_get_group_pins(struct pinctrl_dev *pctldev,
      unsigned int selector,
      const unsigned int **pins,
      unsigned int *npins)
{
 *npins = npcm7xx_groups[selector].npins;
 *pins = npcm7xx_groups[selector].pins;

 return 0;
}
