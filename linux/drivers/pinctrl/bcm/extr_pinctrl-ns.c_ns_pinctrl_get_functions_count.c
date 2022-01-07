
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct ns_pinctrl {int num_functions; } ;


 struct ns_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ns_pinctrl_get_functions_count(struct pinctrl_dev *pctrl_dev)
{
 struct ns_pinctrl *ns_pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return ns_pinctrl->num_functions;
}
