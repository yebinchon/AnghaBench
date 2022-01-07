
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_pinctrl_priv {TYPE_2__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char** groups; unsigned int num_groups; } ;


 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int uniphier_pmx_get_function_groups(struct pinctrl_dev *pctldev,
         unsigned selector,
         const char * const **groups,
         unsigned *num_groups)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);

 *groups = priv->socdata->functions[selector].groups;
 *num_groups = priv->socdata->functions[selector].num_groups;

 return 0;
}
