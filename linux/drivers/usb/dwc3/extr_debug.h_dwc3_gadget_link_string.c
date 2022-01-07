
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;
__attribute__((used)) static inline const char *
dwc3_gadget_link_string(enum dwc3_link_state link_state)
{
 switch (link_state) {
 case 131:
  return "U0";
 case 130:
  return "U1";
 case 129:
  return "U2";
 case 128:
  return "U3";
 case 133:
  return "SS.Disabled";
 case 134:
  return "RX.Detect";
 case 132:
  return "SS.Inactive";
 case 138:
  return "Polling";
 case 137:
  return "Recovery";
 case 140:
  return "Hot Reset";
 case 141:
  return "Compliance";
 case 139:
  return "Loopback";
 case 136:
  return "Reset";
 case 135:
  return "Resume";
 default:
  return "UNKNOWN link state\n";
 }
}
