
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *dwc3_gadget_event_type_string(u8 event)
{
 switch (event) {
 case 136:
  return "Disconnect";
 case 130:
  return "Reset";
 case 137:
  return "Connect Done";
 case 132:
  return "Link Status Change";
 case 128:
  return "Wake-Up";
 case 133:
  return "Hibernation";
 case 135:
  return "End of Periodic Frame";
 case 129:
  return "Start of Frame";
 case 134:
  return "Erratic Error";
 case 138:
  return "Command Complete";
 case 131:
  return "Overflow";
 default:
  return "UNKNOWN";
 }
}
