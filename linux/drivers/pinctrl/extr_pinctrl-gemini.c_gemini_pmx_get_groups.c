
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 TYPE_1__* gemini_pmx_functions ;

__attribute__((used)) static int gemini_pmx_get_groups(struct pinctrl_dev *pctldev,
     unsigned int selector,
     const char * const **groups,
     unsigned int * const num_groups)
{
 *groups = gemini_pmx_functions[selector].groups;
 *num_groups = gemini_pmx_functions[selector].num_groups;
 return 0;
}
