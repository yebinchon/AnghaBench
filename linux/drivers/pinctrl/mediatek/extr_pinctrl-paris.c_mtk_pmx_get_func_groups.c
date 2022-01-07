
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {char** grp_names; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int ngrps; } ;


 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pmx_get_func_groups(struct pinctrl_dev *pctldev,
       unsigned function,
       const char * const **groups,
       unsigned * const num_groups)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);

 *groups = hw->grp_names;
 *num_groups = hw->soc->ngrps;

 return 0;
}
