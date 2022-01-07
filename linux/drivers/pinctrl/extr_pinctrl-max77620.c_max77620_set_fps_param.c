
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_pctrl_info {int dev; int rmap; struct max77620_fps_config* fps_config; } ;
struct max77620_fps_config {int active_fps_src; int suspend_fps_src; int active_power_up_slots; int suspend_power_up_slots; int active_power_down_slots; int suspend_power_down_slots; } ;


 int EINVAL ;



 int MAX77620_FPS_PD_PERIOD_MASK ;
 int MAX77620_FPS_PD_PERIOD_SHIFT ;
 int MAX77620_FPS_PU_PERIOD_MASK ;
 int MAX77620_FPS_PU_PERIOD_SHIFT ;
 int MAX77620_FPS_SRC_MASK ;
 int MAX77620_FPS_SRC_SHIFT ;
 int MAX77620_GPIO1 ;
 int MAX77620_GPIO3 ;
 int MAX77620_REG_FPS_GPIO1 ;



 int dev_err (int ,char*,int,int) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int max77620_set_fps_param(struct max77620_pctrl_info *mpci,
      int pin, int param)
{
 struct max77620_fps_config *fps_config = &mpci->fps_config[pin];
 int addr, ret;
 int param_val;
 int mask, shift;

 if ((pin < MAX77620_GPIO1) || (pin > MAX77620_GPIO3))
  return 0;

 addr = MAX77620_REG_FPS_GPIO1 + pin - 1;
 switch (param) {
 case 131:
 case 128:
  mask = MAX77620_FPS_SRC_MASK;
  shift = MAX77620_FPS_SRC_SHIFT;
  param_val = fps_config->active_fps_src;
  if (param == 128)
   param_val = fps_config->suspend_fps_src;
  break;

 case 132:
 case 129:
  mask = MAX77620_FPS_PU_PERIOD_MASK;
  shift = MAX77620_FPS_PU_PERIOD_SHIFT;
  param_val = fps_config->active_power_up_slots;
  if (param == 129)
   param_val = fps_config->suspend_power_up_slots;
  break;

 case 133:
 case 130:
  mask = MAX77620_FPS_PD_PERIOD_MASK;
  shift = MAX77620_FPS_PD_PERIOD_SHIFT;
  param_val = fps_config->active_power_down_slots;
  if (param == 130)
   param_val = fps_config->suspend_power_down_slots;
  break;

 default:
  dev_err(mpci->dev, "Invalid parameter %d for pin %d\n",
   param, pin);
  return -EINVAL;
 }

 if (param_val < 0)
  return 0;

 ret = regmap_update_bits(mpci->rmap, addr, mask, param_val << shift);
 if (ret < 0)
  dev_err(mpci->dev, "Reg 0x%02x update failed %d\n", addr, ret);

 return ret;
}
