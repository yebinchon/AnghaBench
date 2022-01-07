
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* artpec6_pmx_functions ;

__attribute__((used)) static const char *artpec6_pmx_get_fname(struct pinctrl_dev *pctldev,
      unsigned int function)
{
 return artpec6_pmx_functions[function].name;
}
