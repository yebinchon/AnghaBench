
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2880_priv {unsigned int group_count; TYPE_2__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int pin_count; } ;


 int EINVAL ;
 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rt2880_get_group_pins(struct pinctrl_dev *pctrldev,
     unsigned int group,
     const unsigned int **pins,
     unsigned int *num_pins)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 if (group >= p->group_count)
  return -EINVAL;

 *pins = p->groups[group].func[0].pins;
 *num_pins = p->groups[group].func[0].pin_count;

 return 0;
}
