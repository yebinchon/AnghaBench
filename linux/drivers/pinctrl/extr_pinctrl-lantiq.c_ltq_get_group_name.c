
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {unsigned int num_grps; TYPE_1__* grps; } ;
struct TYPE_2__ {char const* name; } ;


 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *ltq_get_group_name(struct pinctrl_dev *pctrldev,
      unsigned selector)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 if (selector >= info->num_grps)
  return ((void*)0);
 return info->grps[selector].name;
}
