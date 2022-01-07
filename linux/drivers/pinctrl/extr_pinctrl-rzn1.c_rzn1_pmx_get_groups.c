
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rzn1_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rzn1_pmx_get_groups(struct pinctrl_dev *pctldev,
          unsigned int selector,
          const char * const **groups,
          unsigned int * const num_groups)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = ipctl->functions[selector].groups;
 *num_groups = ipctl->functions[selector].num_groups;

 return 0;
}
