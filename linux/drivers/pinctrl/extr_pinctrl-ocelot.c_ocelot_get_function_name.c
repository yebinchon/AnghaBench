
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 char const** ocelot_function_names ;

__attribute__((used)) static const char *ocelot_get_function_name(struct pinctrl_dev *pctldev,
         unsigned int function)
{
 return ocelot_function_names[function];
}
