
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct atlas7_pmx {TYPE_1__* pctl_data; } ;
struct TYPE_2__ {int grps_cnt; } ;


 struct atlas7_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atlas7_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct atlas7_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 return pmx->pctl_data->grps_cnt;
}
