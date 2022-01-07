
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {TYPE_2__* data; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {char const* name; } ;


 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

const char *meson_pmx_get_func_name(struct pinctrl_dev *pcdev,
        unsigned selector)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);

 return pc->data->funcs[selector].name;
}
