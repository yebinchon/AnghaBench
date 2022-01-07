
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {int dev; int pctrl; TYPE_1__* soc; } ;
struct group_desc {int name; int data; int num_pins; int pins; } ;
struct TYPE_2__ {int ngrps; struct group_desc* grps; } ;


 int dev_err (int ,char*,int ) ;
 int pinctrl_generic_add_group (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mtk_build_groups(struct mtk_pinctrl *hw)
{
 int err, i;

 for (i = 0; i < hw->soc->ngrps; i++) {
  const struct group_desc *group = hw->soc->grps + i;

  err = pinctrl_generic_add_group(hw->pctrl, group->name,
      group->pins, group->num_pins,
      group->data);
  if (err < 0) {
   dev_err(hw->dev, "Failed to register group %s\n",
    group->name);
   return err;
  }
 }

 return 0;
}
