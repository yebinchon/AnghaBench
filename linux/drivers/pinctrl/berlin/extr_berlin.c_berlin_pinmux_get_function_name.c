
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct berlin_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;


 struct berlin_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *berlin_pinmux_get_function_name(struct pinctrl_dev *pctrl_dev,
         unsigned function)
{
 struct berlin_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return pctrl->functions[function].name;
}
