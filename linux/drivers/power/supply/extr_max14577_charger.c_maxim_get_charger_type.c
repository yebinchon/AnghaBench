
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum maxim_device_type { ____Placeholder_maxim_device_type } maxim_device_type ;
typedef enum max14577_muic_charger_type { ____Placeholder_max14577_muic_charger_type } max14577_muic_charger_type ;
 int MAXIM_DEVICE_TYPE_MAX77836 ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static enum max14577_muic_charger_type maxim_get_charger_type(
  enum maxim_device_type dev_type, u8 val) {
 switch (val) {
 case 132:
 case 128:
 case 133:
 case 134:
 case 129:
 case 130:
  return val;
 case 135:
 case 131:
  if (dev_type == MAXIM_DEVICE_TYPE_MAX77836)
   val |= 0x8;
  return val;
 default:
  WARN_ONCE(1, "max14577: Unsupported chgtyp register value 0x%02x", val);
  return val;
 }
}
