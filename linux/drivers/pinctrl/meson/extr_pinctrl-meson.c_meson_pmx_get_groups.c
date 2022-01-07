
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {TYPE_2__* data; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {char** groups; unsigned int num_groups; } ;


 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

int meson_pmx_get_groups(struct pinctrl_dev *pcdev, unsigned selector,
    const char * const **groups,
    unsigned * const num_groups)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);

 *groups = pc->data->funcs[selector].groups;
 *num_groups = pc->data->funcs[selector].num_groups;

 return 0;
}
