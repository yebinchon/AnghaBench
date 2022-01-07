
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum power_supply_type { ____Placeholder_power_supply_type } power_supply_type ;






__attribute__((used)) static const char *chg_to_string(enum power_supply_type chg_type)
{
 switch (chg_type) {
 case 130:
  return "USB_SDP_CHARGER";
 case 128:
  return "USB_DCP_CHARGER";
 case 129:
  return "USB_CDP_CHARGER";
 default:
  return "INVALID_CHARGER";
 }
}
