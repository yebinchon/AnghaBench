
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ns_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;


 struct ns_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *ns_pinctrl_get_function_name(struct pinctrl_dev *pctrl_dev,
      unsigned int selector)
{
 struct ns_pinctrl *ns_pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return ns_pinctrl->functions[selector].name;
}
