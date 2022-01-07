
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pinctrl {struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int niomux_routes; struct rockchip_mux_route_data* iomux_routes; } ;
struct rockchip_pin_bank {scalar_t__ bank_num; struct rockchip_pinctrl* drvdata; } ;
struct rockchip_mux_route_data {scalar_t__ bank_num; int pin; int func; int route_val; int route_offset; int route_location; } ;



__attribute__((used)) static bool rockchip_get_mux_route(struct rockchip_pin_bank *bank, int pin,
       int mux, u32 *loc, u32 *reg, u32 *value)
{
 struct rockchip_pinctrl *info = bank->drvdata;
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct rockchip_mux_route_data *data;
 int i;

 for (i = 0; i < ctrl->niomux_routes; i++) {
  data = &ctrl->iomux_routes[i];
  if ((data->bank_num == bank->bank_num) &&
      (data->pin == pin) && (data->func == mux))
   break;
 }

 if (i >= ctrl->niomux_routes)
  return 0;

 *loc = data->route_location;
 *reg = data->route_offset;
 *value = data->route_val;

 return 1;
}
