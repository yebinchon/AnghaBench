
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynq_pinctrl {TYPE_1__* funcs; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct zynq_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *zynq_pmux_get_function_name(struct pinctrl_dev *pctldev,
            unsigned int selector)
{
 struct zynq_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->funcs[selector].name;
}
