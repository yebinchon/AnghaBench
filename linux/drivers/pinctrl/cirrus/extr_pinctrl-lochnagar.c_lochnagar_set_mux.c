
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct lochnagar_pin_priv {int dev; TYPE_1__* pins; struct lochnagar_group* groups; struct lochnagar_func* funcs; } ;
struct lochnagar_pin {int name; } ;
struct lochnagar_group {size_t* pins; int name; } ;
struct lochnagar_func {int type; int op; int name; } ;
struct TYPE_2__ {struct lochnagar_pin* drv_data; } ;


 int EINVAL ;


 int dev_dbg (int ,char*,int ,int ) ;
 int lochnagar_aif_set_mux (struct lochnagar_pin_priv*,struct lochnagar_group const*,int ) ;
 int lochnagar_pin_set_mux (struct lochnagar_pin_priv*,struct lochnagar_pin const*,int ) ;
 struct lochnagar_pin_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lochnagar_set_mux(struct pinctrl_dev *pctldev,
        unsigned int func_idx, unsigned int group_idx)
{
 struct lochnagar_pin_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct lochnagar_func *func = &priv->funcs[func_idx];
 const struct lochnagar_group *group = &priv->groups[group_idx];
 const struct lochnagar_pin *pin;

 switch (func->type) {
 case 129:
  dev_dbg(priv->dev, "Set group %s to %s\n",
   group->name, func->name);

  return lochnagar_aif_set_mux(priv, group, func->op);
 case 128:
  pin = priv->pins[*group->pins].drv_data;

  dev_dbg(priv->dev, "Set pin %s to %s\n", pin->name, func->name);

  return lochnagar_pin_set_mux(priv, pin, func->op);
 default:
  return -EINVAL;
 }
}
