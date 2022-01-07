
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int sirfsoc_pmxfunc_cnt ;

__attribute__((used)) static int sirfsoc_pinmux_get_funcs_count(struct pinctrl_dev *pmxdev)
{
 return sirfsoc_pmxfunc_cnt;
}
