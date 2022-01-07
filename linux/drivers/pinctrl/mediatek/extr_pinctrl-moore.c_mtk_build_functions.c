
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {int dev; int pctrl; TYPE_1__* soc; } ;
struct function_desc {int name; int data; int num_group_names; int group_names; } ;
struct TYPE_2__ {int nfuncs; struct function_desc* funcs; } ;


 int dev_err (int ,char*,int ) ;
 int pinmux_generic_add_function (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mtk_build_functions(struct mtk_pinctrl *hw)
{
 int i, err;

 for (i = 0; i < hw->soc->nfuncs ; i++) {
  const struct function_desc *func = hw->soc->funcs + i;

  err = pinmux_generic_add_function(hw->pctrl, func->name,
        func->group_names,
        func->num_group_names,
        func->data);
  if (err < 0) {
   dev_err(hw->dev, "Failed to register function %s\n",
    func->name);
   return err;
  }
 }

 return 0;
}
