
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 TYPE_1__* artpec6_pmx_functions ;

__attribute__((used)) static int artpec6_pmx_get_fgroups(struct pinctrl_dev *pctldev,
       unsigned int function,
       const char * const **groups,
       unsigned int * const num_groups)
{
 *groups = artpec6_pmx_functions[function].groups;
 *num_groups = artpec6_pmx_functions[function].num_groups;
 return 0;
}
