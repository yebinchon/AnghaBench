
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct lochnagar_pin_priv {TYPE_2__* func_groups; TYPE_1__* funcs; } ;
struct TYPE_4__ {char** groups; unsigned int ngroups; } ;
struct TYPE_3__ {int type; } ;


 struct lochnagar_pin_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lochnagar_get_func_groups(struct pinctrl_dev *pctldev,
         unsigned int func_idx,
         const char * const **groups,
         unsigned int * const num_groups)
{
 struct lochnagar_pin_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 int func_type;

 func_type = priv->funcs[func_idx].type;

 *groups = priv->func_groups[func_type].groups;
 *num_groups = priv->func_groups[func_type].ngroups;

 return 0;
}
