
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mtk_pinctrl_group {int pin; int name; } ;
struct mtk_pinctrl {int * grp_names; struct mtk_pinctrl_group* groups; TYPE_1__* soc; } ;
struct mtk_pin_desc {int name; int number; } ;
struct TYPE_2__ {int npins; struct mtk_pin_desc* pins; int ngrps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kmalloc_array (int *,int ,int,int ) ;
 struct mtk_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_pctrl_build_state(struct platform_device *pdev)
{
 struct mtk_pinctrl *hw = platform_get_drvdata(pdev);
 int i;


 hw->groups = devm_kmalloc_array(&pdev->dev, hw->soc->ngrps,
     sizeof(*hw->groups), GFP_KERNEL);
 if (!hw->groups)
  return -ENOMEM;


 hw->grp_names = devm_kmalloc_array(&pdev->dev, hw->soc->ngrps,
        sizeof(*hw->grp_names), GFP_KERNEL);
 if (!hw->grp_names)
  return -ENOMEM;

 for (i = 0; i < hw->soc->npins; i++) {
  const struct mtk_pin_desc *pin = hw->soc->pins + i;
  struct mtk_pinctrl_group *group = hw->groups + i;

  group->name = pin->name;
  group->pin = pin->number;

  hw->grp_names[i] = pin->name;
 }

 return 0;
}
