
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3_event_devt {int type; int event_info; } ;
struct TYPE_2__ {int state; } ;
struct dwc3 {int dev; TYPE_1__ gadget; int revision; int has_hibernation; } ;
 int DWC3_REVISION_230A ;
 int USB_STATE_CONFIGURED ;
 int dev_WARN (int ,char*,int) ;
 int dev_WARN_ONCE (int ,int,char*) ;
 int dwc3_gadget_conndone_interrupt (struct dwc3*) ;
 int dwc3_gadget_disconnect_interrupt (struct dwc3*) ;
 int dwc3_gadget_hibernation_interrupt (struct dwc3*,int ) ;
 int dwc3_gadget_linksts_change_interrupt (struct dwc3*,int ) ;
 int dwc3_gadget_reset_interrupt (struct dwc3*) ;
 int dwc3_gadget_suspend_interrupt (struct dwc3*,int ) ;
 int dwc3_gadget_wakeup_interrupt (struct dwc3*) ;

__attribute__((used)) static void dwc3_gadget_interrupt(struct dwc3 *dwc,
  const struct dwc3_event_devt *event)
{
 switch (event->type) {
 case 136:
  dwc3_gadget_disconnect_interrupt(dwc);
  break;
 case 130:
  dwc3_gadget_reset_interrupt(dwc);
  break;
 case 137:
  dwc3_gadget_conndone_interrupt(dwc);
  break;
 case 128:
  dwc3_gadget_wakeup_interrupt(dwc);
  break;
 case 133:
  if (dev_WARN_ONCE(dwc->dev, !dwc->has_hibernation,
     "unexpected hibernation event\n"))
   break;

  dwc3_gadget_hibernation_interrupt(dwc, event->event_info);
  break;
 case 132:
  dwc3_gadget_linksts_change_interrupt(dwc, event->event_info);
  break;
 case 135:

  if (dwc->revision >= DWC3_REVISION_230A) {




   if (dwc->gadget.state >= USB_STATE_CONFIGURED)
    dwc3_gadget_suspend_interrupt(dwc,
      event->event_info);
  }
  break;
 case 129:
 case 134:
 case 138:
 case 131:
  break;
 default:
  dev_WARN(dwc->dev, "UNKNOWN IRQ %d\n", event->type);
 }
}
