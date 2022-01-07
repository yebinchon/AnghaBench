
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_event; int notifier; struct usb_otg* otg; } ;
struct usb_phy_generic {int vbus; TYPE_1__ phy; int gpiod_vbus; } ;
struct usb_otg {int gadget; int state; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OTG_STATE_B_IDLE ;
 int OTG_STATE_B_PERIPHERAL ;
 int USB_EVENT_NONE ;
 int USB_EVENT_VBUS ;
 int atomic_notifier_call_chain (int *,int,int ) ;
 int gpiod_get_value (int ) ;
 int nop_set_vbus_draw (struct usb_phy_generic*,int) ;

__attribute__((used)) static irqreturn_t nop_gpio_vbus_thread(int irq, void *data)
{
 struct usb_phy_generic *nop = data;
 struct usb_otg *otg = nop->phy.otg;
 int vbus, status;

 vbus = gpiod_get_value(nop->gpiod_vbus);
 if ((vbus ^ nop->vbus) == 0)
  return IRQ_HANDLED;
 nop->vbus = vbus;

 if (vbus) {
  status = USB_EVENT_VBUS;
  otg->state = OTG_STATE_B_PERIPHERAL;
  nop->phy.last_event = status;


  nop_set_vbus_draw(nop, 100);

  atomic_notifier_call_chain(&nop->phy.notifier, status,
        otg->gadget);
 } else {
  nop_set_vbus_draw(nop, 0);

  status = USB_EVENT_NONE;
  otg->state = OTG_STATE_B_IDLE;
  nop->phy.last_event = status;

  atomic_notifier_call_chain(&nop->phy.notifier, status,
        otg->gadget);
 }
 return IRQ_HANDLED;
}
