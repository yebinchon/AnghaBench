
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* u300_pmx_functions ;

__attribute__((used)) static const char *u300_pmx_get_func_name(struct pinctrl_dev *pctldev,
       unsigned selector)
{
 return u300_pmx_functions[selector].name;
}
