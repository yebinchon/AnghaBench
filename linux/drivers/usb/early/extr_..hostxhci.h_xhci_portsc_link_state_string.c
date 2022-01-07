
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PORT_PLS_MASK ;
__attribute__((used)) static inline const char *xhci_portsc_link_state_string(u32 portsc)
{
 switch (portsc & PORT_PLS_MASK) {
 case 131:
  return "U0";
 case 130:
  return "U1";
 case 129:
  return "U2";
 case 128:
  return "U3";
 case 139:
  return "Disabled";
 case 133:
  return "RxDetect";
 case 137:
  return "Inactive";
 case 136:
  return "Polling";
 case 135:
  return "Recovery";
 case 138:
  return "Hot Reset";
 case 140:
  return "Compliance mode";
 case 132:
  return "Test mode";
 case 134:
  return "Resume";
 default:
  break;
 }
 return "Unknown";
}
