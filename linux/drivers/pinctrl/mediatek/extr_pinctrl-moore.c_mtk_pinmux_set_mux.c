
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct group_desc {int num_pins; int* data; int* pins; int name; } ;
struct function_desc {int name; } ;
struct TYPE_2__ {int * pins; } ;


 int EINVAL ;
 int PINCTRL_PIN_REG_MODE ;
 int dev_dbg (int ,char*,int ,int ) ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct group_desc* pinctrl_generic_get_group (struct pinctrl_dev*,unsigned int) ;
 struct function_desc* pinmux_generic_get_function (struct pinctrl_dev*,unsigned int) ;

__attribute__((used)) static int mtk_pinmux_set_mux(struct pinctrl_dev *pctldev,
         unsigned int selector, unsigned int group)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 struct function_desc *func;
 struct group_desc *grp;
 int i;

 func = pinmux_generic_get_function(pctldev, selector);
 if (!func)
  return -EINVAL;

 grp = pinctrl_generic_get_group(pctldev, group);
 if (!grp)
  return -EINVAL;

 dev_dbg(pctldev->dev, "enable function %s group %s\n",
  func->name, grp->name);

 for (i = 0; i < grp->num_pins; i++) {
  const struct mtk_pin_desc *desc;
  int *pin_modes = grp->data;
  int pin = grp->pins[i];

  desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];

  mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_MODE,
     pin_modes[i]);
 }

 return 0;
}
