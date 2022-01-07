
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct armada_37xx_pinctrl {TYPE_1__* funcs; } ;
struct TYPE_2__ {char const* name; } ;


 struct armada_37xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *armada_37xx_pmx_get_func_name(struct pinctrl_dev *pctldev,
       unsigned int selector)
{
 struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->funcs[selector].name;
}
