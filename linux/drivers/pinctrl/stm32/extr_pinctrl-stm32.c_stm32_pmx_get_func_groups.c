
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pinctrl {char** grp_names; unsigned int ngroups; } ;
struct pinctrl_dev {int dummy; } ;


 struct stm32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int stm32_pmx_get_func_groups(struct pinctrl_dev *pctldev,
         unsigned function,
         const char * const **groups,
         unsigned * const num_groups)
{
 struct stm32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctl->grp_names;
 *num_groups = pctl->ngroups;

 return 0;
}
