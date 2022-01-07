
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {TYPE_2__* data; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int num_pins; } ;


 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson_get_group_pins(struct pinctrl_dev *pcdev, unsigned selector,
    const unsigned **pins, unsigned *num_pins)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);

 *pins = pc->data->groups[selector].pins;
 *num_pins = pc->data->groups[selector].num_pins;

 return 0;
}
