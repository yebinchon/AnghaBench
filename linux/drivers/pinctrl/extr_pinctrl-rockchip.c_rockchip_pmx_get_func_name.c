
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *rockchip_pmx_get_func_name(struct pinctrl_dev *pctldev,
       unsigned selector)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 return info->functions[selector].name;
}
