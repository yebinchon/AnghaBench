
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_pfc_pin {int configs; } ;
struct sh_pfc {TYPE_1__* info; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {struct sh_pfc_pin* pins; } ;







 int SH_PFC_PIN_CFG_DRIVE_STRENGTH ;
 int SH_PFC_PIN_CFG_IO_VOLTAGE ;
 int SH_PFC_PIN_CFG_PULL_DOWN ;
 int SH_PFC_PIN_CFG_PULL_UP ;
 int SH_PFC_PIN_CFG_PULL_UP_DOWN ;
 int sh_pfc_get_pin_index (struct sh_pfc*,unsigned int) ;

__attribute__((used)) static bool sh_pfc_pinconf_validate(struct sh_pfc *pfc, unsigned int _pin,
        enum pin_config_param param)
{
 int idx = sh_pfc_get_pin_index(pfc, _pin);
 const struct sh_pfc_pin *pin = &pfc->info->pins[idx];

 switch (param) {
 case 132:
  return pin->configs & SH_PFC_PIN_CFG_PULL_UP_DOWN;

 case 130:
  return pin->configs & SH_PFC_PIN_CFG_PULL_UP;

 case 131:
  return pin->configs & SH_PFC_PIN_CFG_PULL_DOWN;

 case 129:
  return pin->configs & SH_PFC_PIN_CFG_DRIVE_STRENGTH;

 case 128:
  return pin->configs & SH_PFC_PIN_CFG_IO_VOLTAGE;

 default:
  return 0;
 }
}
