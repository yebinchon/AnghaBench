
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct pistachio_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *
pistachio_pinmux_get_function_name(struct pinctrl_dev *pctldev, unsigned func)
{
 struct pistachio_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 return pctl->functions[func].name;
}
