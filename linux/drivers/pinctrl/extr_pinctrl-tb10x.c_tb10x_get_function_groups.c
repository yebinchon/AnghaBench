
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb10x_pinctrl {TYPE_1__* pinfuncs; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char* group; } ;


 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tb10x_get_function_groups(struct pinctrl_dev *pctl,
    unsigned n, const char * const **groups,
    unsigned * const num_groups)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);

 *groups = &state->pinfuncs[n].group;
 *num_groups = 1;

 return 0;
}
