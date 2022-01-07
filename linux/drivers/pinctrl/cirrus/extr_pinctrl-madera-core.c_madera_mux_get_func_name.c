
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* madera_mux_funcs ;

__attribute__((used)) static const char *madera_mux_get_func_name(struct pinctrl_dev *pctldev,
         unsigned int selector)
{
 return madera_mux_funcs[selector].name;
}
