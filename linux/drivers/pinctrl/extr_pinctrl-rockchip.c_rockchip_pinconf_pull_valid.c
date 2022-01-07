
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pin_ctrl {int type; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int PIN_CONFIG_BIAS_DISABLE ;
 int PIN_CONFIG_BIAS_PULL_PIN_DEFAULT ;
__attribute__((used)) static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
     enum pin_config_param pull)
{
 switch (ctrl->type) {
 case 135:
 case 133:
  return (pull == PIN_CONFIG_BIAS_PULL_PIN_DEFAULT ||
     pull == PIN_CONFIG_BIAS_DISABLE);
 case 134:
  return pull ? 0 : 1;
 case 136:
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
  return (pull != PIN_CONFIG_BIAS_PULL_PIN_DEFAULT);
 }

 return 0;
}
