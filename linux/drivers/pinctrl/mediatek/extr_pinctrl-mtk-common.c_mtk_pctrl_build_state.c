
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mtk_pinctrl_group {int pin; int name; } ;
struct mtk_pinctrl {int ngroups; int * grp_names; struct mtk_pinctrl_group* groups; TYPE_1__* devdata; } ;
struct TYPE_4__ {int name; int number; } ;
struct mtk_desc_pin {TYPE_2__ pin; } ;
struct TYPE_3__ {int npins; struct mtk_desc_pin* pins; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int *,int,int,int ) ;
 struct mtk_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_pctrl_build_state(struct platform_device *pdev)
{
 struct mtk_pinctrl *pctl = platform_get_drvdata(pdev);
 int i;

 pctl->ngroups = pctl->devdata->npins;


 pctl->groups = devm_kcalloc(&pdev->dev, pctl->ngroups,
        sizeof(*pctl->groups), GFP_KERNEL);
 if (!pctl->groups)
  return -ENOMEM;


 pctl->grp_names = devm_kcalloc(&pdev->dev, pctl->ngroups,
           sizeof(*pctl->grp_names), GFP_KERNEL);
 if (!pctl->grp_names)
  return -ENOMEM;

 for (i = 0; i < pctl->devdata->npins; i++) {
  const struct mtk_desc_pin *pin = pctl->devdata->pins + i;
  struct mtk_pinctrl_group *group = pctl->groups + i;

  group->name = pin->pin.name;
  group->pin = pin->pin.number;

  pctl->grp_names[i] = pin->pin.name;
 }

 return 0;
}
