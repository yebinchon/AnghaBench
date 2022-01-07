
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_devspec; } ;
union dwc3_event {int depevt; int devt; TYPE_1__ type; } ;
typedef int u32 ;


 char const* dwc3_ep_event_string (char*,size_t,int *,int ) ;
 char const* dwc3_gadget_event_string (char*,size_t,int *) ;

__attribute__((used)) static inline const char *dwc3_decode_event(char *str, size_t size, u32 event,
  u32 ep0state)
{
 const union dwc3_event evt = (union dwc3_event) event;

 if (evt.type.is_devspec)
  return dwc3_gadget_event_string(str, size, &evt.devt);
 else
  return dwc3_ep_event_string(str, size, &evt.depevt, ep0state);
}
