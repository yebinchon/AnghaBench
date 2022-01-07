
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;


 struct mrfld_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *mrfld_get_function_name(struct pinctrl_dev *pctldev,
        unsigned int function)
{
 struct mrfld_pinctrl *mp = pinctrl_dev_get_drvdata(pctldev);

 return mp->functions[function].name;
}
