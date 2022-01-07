
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct lpc18xx_scu_data {TYPE_1__* func; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct lpc18xx_scu_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lpc18xx_pmx_get_func_groups(struct pinctrl_dev *pctldev,
           unsigned function,
           const char *const **groups,
           unsigned *const num_groups)
{
 struct lpc18xx_scu_data *scu = pinctrl_dev_get_drvdata(pctldev);

 *groups = scu->func[function].groups;
 *num_groups = scu->func[function].ngroups;

 return 0;
}
