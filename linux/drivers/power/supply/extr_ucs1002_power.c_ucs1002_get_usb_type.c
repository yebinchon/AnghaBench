
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct ucs1002_info {int regmap; } ;
typedef enum power_supply_usb_type { ____Placeholder_power_supply_usb_type } power_supply_usb_type ;






 unsigned int F_ACTIVE_MODE_MASK ;
 int POWER_SUPPLY_USB_TYPE_CDP ;
 int POWER_SUPPLY_USB_TYPE_DCP ;
 int POWER_SUPPLY_USB_TYPE_PD ;
 int POWER_SUPPLY_USB_TYPE_SDP ;
 int POWER_SUPPLY_USB_TYPE_UNKNOWN ;
 int UCS1002_REG_PIN_STATUS ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ucs1002_get_usb_type(struct ucs1002_info *info,
    union power_supply_propval *val)
{
 enum power_supply_usb_type type;
 unsigned int reg;
 int ret;

 ret = regmap_read(info->regmap, UCS1002_REG_PIN_STATUS, &reg);
 if (ret)
  return ret;

 switch (reg & F_ACTIVE_MODE_MASK) {
 default:
  type = POWER_SUPPLY_USB_TYPE_UNKNOWN;
  break;
 case 128:
  type = POWER_SUPPLY_USB_TYPE_PD;
  break;
 case 129:
  type = POWER_SUPPLY_USB_TYPE_SDP;
  break;
 case 130:
  type = POWER_SUPPLY_USB_TYPE_DCP;
  break;
 case 131:
  type = POWER_SUPPLY_USB_TYPE_CDP;
  break;
 }

 val->intval = type;

 return 0;
}
