
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct nsp_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct nsp_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nsp_get_function_groups(struct pinctrl_dev *pctrl_dev,
       unsigned int selector,
       const char * const **groups,
       unsigned * const num_groups)
{
 struct nsp_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 *groups = pinctrl->functions[selector].groups;
 *num_groups = pinctrl->functions[selector].num_groups;

 return 0;
}
