
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb10x_pinctrl {int pinfuncgrpcnt; } ;
struct pinctrl_dev {int dummy; } ;


 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tb10x_get_groups_count(struct pinctrl_dev *pctl)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);
 return state->pinfuncgrpcnt;
}
