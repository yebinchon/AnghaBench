
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct ns_pinctrl {int offset; int regmap; TYPE_1__* groups; } ;
struct TYPE_2__ {int num_pins; int* pins; } ;


 int BIT (int) ;
 struct ns_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ns_pinctrl_set_mux(struct pinctrl_dev *pctrl_dev,
         unsigned int func_select,
         unsigned int grp_select)
{
 struct ns_pinctrl *ns_pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);
 u32 unset = 0;
 u32 tmp;
 int i;

 for (i = 0; i < ns_pinctrl->groups[grp_select].num_pins; i++) {
  int pin_number = ns_pinctrl->groups[grp_select].pins[i];

  unset |= BIT(pin_number);
 }

 regmap_read(ns_pinctrl->regmap, ns_pinctrl->offset, &tmp);
 tmp &= ~unset;
 regmap_write(ns_pinctrl->regmap, ns_pinctrl->offset, tmp);

 return 0;
}
