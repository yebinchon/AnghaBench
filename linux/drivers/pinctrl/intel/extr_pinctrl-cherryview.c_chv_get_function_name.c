
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {TYPE_2__* community; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char const* name; } ;


 struct chv_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *chv_get_function_name(struct pinctrl_dev *pctldev,
      unsigned int function)
{
 struct chv_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->community->functions[function].name;
}
