
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int WMT_FSEL_COUNT ;

__attribute__((used)) static int wmt_pmx_get_functions_count(struct pinctrl_dev *pctldev)
{
 return WMT_FSEL_COUNT;
}
