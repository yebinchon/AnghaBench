
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int madera_mux_funcs ;

__attribute__((used)) static int madera_mux_get_funcs_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(madera_mux_funcs);
}
