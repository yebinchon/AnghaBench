
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_ops {int get_group_name; int get_groups_count; } ;
struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {struct pinctrl_ops* pctlops; } ;


 int EINVAL ;

__attribute__((used)) static int pinctrl_check_ops(struct pinctrl_dev *pctldev)
{
 const struct pinctrl_ops *ops = pctldev->desc->pctlops;

 if (!ops ||
     !ops->get_groups_count ||
     !ops->get_group_name)
  return -EINVAL;

 return 0;
}
