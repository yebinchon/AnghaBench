
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {int num_grps; } ;


 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ltq_get_group_count(struct pinctrl_dev *pctrldev)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 return info->num_grps;
}
