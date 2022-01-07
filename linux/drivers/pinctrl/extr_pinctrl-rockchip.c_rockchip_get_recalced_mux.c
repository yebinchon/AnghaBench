
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int niomux_recalced; struct rockchip_mux_recalced_data* iomux_recalced; } ;
struct rockchip_pin_bank {scalar_t__ bank_num; struct rockchip_pinctrl* drvdata; } ;
struct rockchip_mux_recalced_data {scalar_t__ num; int pin; int reg; int mask; int bit; } ;



__attribute__((used)) static void rockchip_get_recalced_mux(struct rockchip_pin_bank *bank, int pin,
          int *reg, u8 *bit, int *mask)
{
 struct rockchip_pinctrl *info = bank->drvdata;
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct rockchip_mux_recalced_data *data;
 int i;

 for (i = 0; i < ctrl->niomux_recalced; i++) {
  data = &ctrl->iomux_recalced[i];
  if (data->num == bank->bank_num &&
      data->pin == pin)
   break;
 }

 if (i >= ctrl->niomux_recalced)
  return;

 *reg = data->reg;
 *mask = data->mask;
 *bit = data->bit;
}
