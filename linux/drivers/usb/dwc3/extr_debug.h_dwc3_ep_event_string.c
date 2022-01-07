
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dwc3_event_depevt {int endpoint_number; int status; int endpoint_event; int parameters; } ;



 int DEPEVT_STATUS_CONTROL_PHASE (int) ;

 int DEPEVT_STATUS_IOC ;
 int DEPEVT_STATUS_LST ;
 int DEPEVT_STATUS_SHORT ;
 int DEPEVT_STATUS_TRANSFER_ACTIVE ;
 char* dwc3_ep0_state_string (int ) ;
 int snprintf (char*,size_t,char*,...) ;
 size_t strlen (char*) ;

__attribute__((used)) static inline const char *dwc3_ep_event_string(char *str, size_t size,
  const struct dwc3_event_depevt *event, u32 ep0state)
{
 u8 epnum = event->endpoint_number;
 size_t len;
 int status;
 int ret;

 ret = snprintf(str, size, "ep%d%s: ", epnum >> 1,
   (epnum & 1) ? "in" : "out");
 if (ret < 0)
  return "UNKNOWN";

 status = event->status;

 switch (event->endpoint_event) {
 case 130:
  len = strlen(str);
  snprintf(str + len, size - len, "Transfer Complete (%c%c%c)",
    status & DEPEVT_STATUS_SHORT ? 'S' : 's',
    status & DEPEVT_STATUS_IOC ? 'I' : 'i',
    status & DEPEVT_STATUS_LST ? 'L' : 'l');

  len = strlen(str);

  if (epnum <= 1)
   snprintf(str + len, size - len, " [%s]",
     dwc3_ep0_state_string(ep0state));
  break;
 case 129:
  len = strlen(str);

  snprintf(str + len, size - len, "Transfer In Progress [%d] (%c%c%c)",
    event->parameters,
    status & DEPEVT_STATUS_SHORT ? 'S' : 's',
    status & DEPEVT_STATUS_IOC ? 'I' : 'i',
    status & DEPEVT_STATUS_LST ? 'M' : 'm');
  break;
 case 128:
  len = strlen(str);

  snprintf(str + len, size - len, "Transfer Not Ready [%d]%s",
    event->parameters,
    status & DEPEVT_STATUS_TRANSFER_ACTIVE ?
    " (Active)" : " (Not Active)");

  len = strlen(str);


  if (epnum <= 1) {
   int phase = DEPEVT_STATUS_CONTROL_PHASE(event->status);

   switch (phase) {
   case 137:
    snprintf(str + ret, size - ret,
      " [Data Phase]");
    break;
   case 136:
    snprintf(str + ret, size - ret,
      " [Status Phase]");
   }
  }
  break;
 case 132:
  snprintf(str + ret, size - ret, "FIFO");
  break;
 case 131:
  status = event->status;

  switch (status) {
  case 135:
   snprintf(str + ret, size - ret, " Stream %d Found",
     event->parameters);
   break;
  case 134:
  default:
   snprintf(str + ret, size - ret, " Stream Not Found");
   break;
  }

  break;
 case 133:
  snprintf(str + ret, size - ret, "Endpoint Command Complete");
  break;
 default:
  snprintf(str, size, "UNKNOWN");
 }

 return str;
}
