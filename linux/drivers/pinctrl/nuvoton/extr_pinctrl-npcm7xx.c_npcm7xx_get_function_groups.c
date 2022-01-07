
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int ngroups; char** groups; } ;


 TYPE_1__* npcm7xx_funcs ;

__attribute__((used)) static int npcm7xx_get_function_groups(struct pinctrl_dev *pctldev,
           unsigned int function,
           const char * const **groups,
           unsigned int * const ngroups)
{
 *ngroups = npcm7xx_funcs[function].ngroups;
 *groups = npcm7xx_funcs[function].groups;

 return 0;
}
