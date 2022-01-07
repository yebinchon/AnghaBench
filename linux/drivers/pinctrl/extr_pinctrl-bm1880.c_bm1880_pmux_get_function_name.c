
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {TYPE_1__* funcs; } ;
struct TYPE_2__ {char const* name; } ;


 struct bm1880_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *bm1880_pmux_get_function_name(struct pinctrl_dev *pctldev,
       unsigned int selector)
{
 struct bm1880_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->funcs[selector].name;
}
