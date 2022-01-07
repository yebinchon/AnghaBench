
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *xhci_trb_type_string(u8 type)
{
 switch (type) {
 case 138:
  return "Normal";
 case 134:
  return "Setup Stage";
 case 155:
  return "Data Stage";
 case 131:
  return "Status Stage";
 case 144:
  return "Isoch";
 case 143:
  return "Link";
 case 149:
  return "Event Data";
 case 128:
  return "No-Op";
 case 151:
  return "Enable Slot Command";
 case 153:
  return "Disable Slot Command";
 case 160:
  return "Address Device Command";
 case 156:
  return "Configure Endpoint Command";
 case 150:
  return "Evaluate Context Command";
 case 135:
  return "Reset Endpoint Command";
 case 130:
  return "Stop Ring Command";
 case 133:
  return "Set TR Dequeue Pointer Command";
 case 136:
  return "Reset Device Command";
 case 148:
  return "Force Event Command";
 case 139:
  return "Negotiate Bandwidth Command";
 case 132:
  return "Set Latency Tolerance Value Command";
 case 146:
  return "Get Port Bandwidth Command";
 case 147:
  return "Force Header Command";
 case 158:
  return "No-Op Command";
 case 129:
  return "Transfer Event";
 case 157:
  return "Command Completion Event";
 case 137:
  return "Port Status Change Event";
 case 159:
  return "Bandwidth Request Event";
 case 152:
  return "Doorbell Event";
 case 145:
  return "Host Controller Event";
 case 154:
  return "Device Notification Event";
 case 142:
  return "MFINDEX Wrap Event";
 case 141:
  return "NEC Command Completion Event";
 case 140:
  return "NET Get Firmware Revision Command";
 default:
  return "UNKNOWN";
 }
}
