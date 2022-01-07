
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *xhci_trb_comp_code_string(u8 status)
{
 switch (status) {
 case 152:
  return "Invalid";
 case 132:
  return "Success";
 case 157:
  return "Data Buffer Error";
 case 163:
  return "Babble Detected";
 case 129:
  return "USB Transaction Error";
 case 131:
  return "TRB Error";
 case 136:
  return "Stall Error";
 case 143:
  return "Resource Error";
 case 162:
  return "Bandwidth Error";
 case 145:
  return "No Slots Available Error";
 case 150:
  return "Invalid Stream Type Error";
 case 138:
  return "Slot Not Enabled Error";
 case 156:
  return "Endpoint Not Enabled Error";
 case 139:
  return "Short Packet";
 case 141:
  return "Ring Underrun";
 case 142:
  return "Ring Overrun";
 case 128:
  return "VF Event Ring Full Error";
 case 144:
  return "Parameter Error";
 case 161:
  return "Bandwidth Overrun Error";
 case 158:
  return "Context State Error";
 case 146:
  return "No Ping Response Error";
 case 154:
  return "Event Ring Full Error";
 case 153:
  return "Incompatible Device Error";
 case 147:
  return "Missed Service Error";
 case 159:
  return "Command Ring Stopped";
 case 160:
  return "Command Aborted";
 case 135:
  return "Stopped";
 case 134:
  return "Stopped - Length Invalid";
 case 133:
  return "Stopped - Short Packet";
 case 148:
  return "Max Exit Latency Too Large Error";
 case 149:
  return "Isoch Buffer Overrun";
 case 155:
  return "Event Lost Error";
 case 130:
  return "Undefined Error";
 case 151:
  return "Invalid Stream ID Error";
 case 140:
  return "Secondary Bandwidth Error";
 case 137:
  return "Split Transaction Error";
 default:
  return "Unknown!!";
 }
}
