
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_pinctrl {TYPE_2__* groups; TYPE_1__* functions; int dev; } ;
struct rockchip_pin_config {int func; } ;
struct rockchip_pin_bank {scalar_t__ pin_base; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {unsigned int* pins; int npins; int name; struct rockchip_pin_config* data; } ;
struct TYPE_3__ {int name; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 struct rockchip_pin_bank* pin_to_bank (struct rockchip_pinctrl*,unsigned int const) ;
 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rockchip_set_mux (struct rockchip_pin_bank*,scalar_t__,int ) ;

__attribute__((used)) static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
       unsigned group)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 const unsigned int *pins = info->groups[group].pins;
 const struct rockchip_pin_config *data = info->groups[group].data;
 struct rockchip_pin_bank *bank;
 int cnt, ret = 0;

 dev_dbg(info->dev, "enable function %s group %s\n",
  info->functions[selector].name, info->groups[group].name);





 for (cnt = 0; cnt < info->groups[group].npins; cnt++) {
  bank = pin_to_bank(info, pins[cnt]);
  ret = rockchip_set_mux(bank, pins[cnt] - bank->pin_base,
           data[cnt].func);
  if (ret)
   break;
 }

 if (ret) {

  for (cnt--; cnt >= 0; cnt--)
   rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);

  return ret;
 }

 return 0;
}
