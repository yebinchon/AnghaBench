
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int da850_pupd_group_names ;

__attribute__((used)) static int da850_pupd_get_groups_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(da850_pupd_group_names);
}
