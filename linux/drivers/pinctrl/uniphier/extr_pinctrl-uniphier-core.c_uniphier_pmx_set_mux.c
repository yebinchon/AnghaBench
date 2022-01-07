
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_pinctrl_priv {TYPE_1__* socdata; } ;
struct uniphier_pinctrl_group {int num_pins; int * muxvals; int * pins; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct uniphier_pinctrl_group* groups; } ;


 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int uniphier_pmx_set_one_mux (struct pinctrl_dev*,int ,int ) ;

__attribute__((used)) static int uniphier_pmx_set_mux(struct pinctrl_dev *pctldev,
    unsigned func_selector,
    unsigned group_selector)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct uniphier_pinctrl_group *grp =
     &priv->socdata->groups[group_selector];
 int i;
 int ret;

 for (i = 0; i < grp->num_pins; i++) {
  ret = uniphier_pmx_set_one_mux(pctldev, grp->pins[i],
            grp->muxvals[i]);
  if (ret)
   return ret;
 }

 return 0;
}
