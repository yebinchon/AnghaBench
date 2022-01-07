
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int is_devspec; } ;
union dwc3_event {int raw; int devt; TYPE_1__ type; int depevt; } ;
struct dwc3 {int dev; } ;


 scalar_t__ DWC3_EVENT_TYPE_DEV ;
 int dev_err (int ,char*,int ) ;
 int dwc3_endpoint_interrupt (struct dwc3*,int *) ;
 int dwc3_gadget_interrupt (struct dwc3*,int *) ;
 int trace_dwc3_event (int ,struct dwc3*) ;

__attribute__((used)) static void dwc3_process_event_entry(struct dwc3 *dwc,
  const union dwc3_event *event)
{
 trace_dwc3_event(event->raw, dwc);

 if (!event->type.is_devspec)
  dwc3_endpoint_interrupt(dwc, &event->depevt);
 else if (event->type.type == DWC3_EVENT_TYPE_DEV)
  dwc3_gadget_interrupt(dwc, &event->devt);
 else
  dev_err(dwc->dev, "UNKNOWN IRQ type %d\n", event->raw);
}
