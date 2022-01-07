
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {TYPE_1__* data; } ;
struct TYPE_2__ {int num_groups; } ;


 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson_get_groups_count(struct pinctrl_dev *pcdev)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);

 return pc->data->num_groups;
}
