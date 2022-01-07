
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2880_priv {char** group_names; TYPE_1__** func; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int group_count; size_t* groups; } ;


 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rt2880_pmx_group_get_groups(struct pinctrl_dev *pctrldev,
           unsigned int func,
           const char * const **groups,
           unsigned int * const num_groups)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 if (p->func[func]->group_count == 1)
  *groups = &p->group_names[p->func[func]->groups[0]];
 else
  *groups = p->group_names;

 *num_groups = p->func[func]->group_count;

 return 0;
}
