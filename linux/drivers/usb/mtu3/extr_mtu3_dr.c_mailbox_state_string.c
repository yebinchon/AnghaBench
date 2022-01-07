
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mtu3_vbus_id_state { ____Placeholder_mtu3_vbus_id_state } mtu3_vbus_id_state ;







__attribute__((used)) static char *mailbox_state_string(enum mtu3_vbus_id_state state)
{
 switch (state) {
 case 131:
  return "ID_FLOAT";
 case 130:
  return "ID_GROUND";
 case 129:
  return "VBUS_OFF";
 case 128:
  return "VBUS_VALID";
 default:
  return "UNKNOWN";
 }
}
