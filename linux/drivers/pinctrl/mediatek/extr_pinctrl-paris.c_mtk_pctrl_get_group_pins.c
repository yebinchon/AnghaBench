
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {int pin; } ;


 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pctrl_get_group_pins(struct pinctrl_dev *pctldev,
        unsigned group, const unsigned **pins,
        unsigned *num_pins)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);

 *pins = (unsigned *)&hw->groups[group].pin;
 *num_pins = 1;

 return 0;
}
