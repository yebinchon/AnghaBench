
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {unsigned int num_grps; TYPE_1__* grps; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 int EINVAL ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ltq_get_group_pins(struct pinctrl_dev *pctrldev,
     unsigned selector,
     const unsigned **pins,
     unsigned *num_pins)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 if (selector >= info->num_grps)
  return -EINVAL;
 *pins = info->grps[selector].pins;
 *num_pins = info->grps[selector].npins;
 return 0;
}
