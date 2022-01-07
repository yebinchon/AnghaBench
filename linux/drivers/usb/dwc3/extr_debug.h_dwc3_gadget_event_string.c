
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_devt {int event_info; int type; } ;
typedef enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;
 int DWC3_LINK_STATE_MASK ;
 char* dwc3_gadget_link_string (int) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static inline const char *dwc3_gadget_event_string(char *str, size_t size,
  const struct dwc3_event_devt *event)
{
 enum dwc3_link_state state = event->event_info & DWC3_LINK_STATE_MASK;

 switch (event->type) {
 case 135:
  snprintf(str, size, "Disconnect: [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 130:
  snprintf(str, size, "Reset [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 136:
  snprintf(str, size, "Connection Done [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 132:
  snprintf(str, size, "Link Change [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 128:
  snprintf(str, size, "WakeUp [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 134:
  snprintf(str, size, "End-Of-Frame [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 129:
  snprintf(str, size, "Start-Of-Frame [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 133:
  snprintf(str, size, "Erratic Error [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 137:
  snprintf(str, size, "Command Complete [%s]",
    dwc3_gadget_link_string(state));
  break;
 case 131:
  snprintf(str, size, "Overflow [%s]",
    dwc3_gadget_link_string(state));
  break;
 default:
  snprintf(str, size, "UNKNOWN");
 }

 return str;
}
