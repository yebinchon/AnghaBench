
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct lochnagar_pin_priv {int ngroups; } ;


 struct lochnagar_pin_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lochnagar_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct lochnagar_pin_priv *priv = pinctrl_dev_get_drvdata(pctldev);

 return priv->ngroups;
}
