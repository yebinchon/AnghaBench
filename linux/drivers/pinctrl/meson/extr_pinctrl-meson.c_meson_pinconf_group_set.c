
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pmx_group {int num_pins; int * pins; int name; } ;
struct meson_pinctrl {int dev; TYPE_1__* data; } ;
struct TYPE_2__ {struct meson_pmx_group* groups; } ;


 int dev_dbg (int ,char*,int ) ;
 int meson_pinconf_set (struct pinctrl_dev*,int ,unsigned long*,unsigned int) ;
 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson_pinconf_group_set(struct pinctrl_dev *pcdev,
       unsigned int num_group,
       unsigned long *configs, unsigned num_configs)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);
 struct meson_pmx_group *group = &pc->data->groups[num_group];
 int i;

 dev_dbg(pc->dev, "set pinconf for group %s\n", group->name);

 for (i = 0; i < group->num_pins; i++) {
  meson_pinconf_set(pcdev, group->pins[i], configs,
      num_configs);
 }

 return 0;
}
