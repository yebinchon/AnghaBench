
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg {scalar_t__ state; struct usb_gadget* gadget; TYPE_1__* usb_phy; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int notifier; } ;


 int ENODEV ;
 scalar_t__ OTG_STATE_B_IDLE ;
 scalar_t__ OTG_STATE_B_PERIPHERAL ;
 int USB_EVENT_VBUS ;
 int atomic_notifier_call_chain (int *,int ,struct usb_gadget*) ;

__attribute__((used)) static int nop_set_peripheral(struct usb_otg *otg, struct usb_gadget *gadget)
{
 if (!otg)
  return -ENODEV;

 if (!gadget) {
  otg->gadget = ((void*)0);
  return -ENODEV;
 }

 otg->gadget = gadget;
 if (otg->state == OTG_STATE_B_PERIPHERAL)
  atomic_notifier_call_chain(&otg->usb_phy->notifier,
        USB_EVENT_VBUS, otg->gadget);
 else
  otg->state = OTG_STATE_B_IDLE;
 return 0;
}
