
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pmx_group {int num_pins; int * pins; int name; scalar_t__ data; } ;
struct meson_pmx_func {int name; } ;
struct meson_pinctrl {int reg_mux; int dev; TYPE_1__* data; } ;
struct meson8_pmx_data {int reg; int bit; } ;
struct TYPE_2__ {struct meson_pmx_group* groups; struct meson_pmx_func* funcs; } ;


 int BIT (int ) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int meson8_pmx_disable_other_groups (struct meson_pinctrl*,int ,unsigned int) ;
 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int,int ,int ) ;

__attribute__((used)) static int meson8_pmx_set_mux(struct pinctrl_dev *pcdev, unsigned func_num,
         unsigned group_num)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
 struct meson_pmx_func *func = &pc->data->funcs[func_num];
 struct meson_pmx_group *group = &pc->data->groups[group_num];
 struct meson8_pmx_data *pmx_data =
  (struct meson8_pmx_data *)group->data;
 int i, ret = 0;

 dev_dbg(pc->dev, "enable function %s, group %s\n", func->name,
  group->name);





 for (i = 0; i < group->num_pins; i++)
  meson8_pmx_disable_other_groups(pc, group->pins[i], group_num);


 if (func_num)
  ret = regmap_update_bits(pc->reg_mux, pmx_data->reg * 4,
      BIT(pmx_data->bit),
      BIT(pmx_data->bit));

 return ret;
}
