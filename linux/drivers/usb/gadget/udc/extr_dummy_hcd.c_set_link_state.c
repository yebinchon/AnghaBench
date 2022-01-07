
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dummy_hcd {scalar_t__ active; int port_status; unsigned int old_status; scalar_t__ old_active; scalar_t__ resuming; struct dummy* dum; } ;
struct TYPE_7__ {scalar_t__ speed; } ;
struct dummy {int callback_usage; int lock; TYPE_1__ gadget; TYPE_2__* driver; scalar_t__ ints_enabled; scalar_t__ pullup; } ;
struct TYPE_9__ {scalar_t__ speed; } ;
struct TYPE_8__ {int (* resume ) (TYPE_1__*) ;int (* suspend ) (TYPE_1__*) ;int (* disconnect ) (TYPE_1__*) ;} ;


 scalar_t__ HCD_USB3 ;
 int USB_PORT_STAT_ENABLE ;
 unsigned int USB_PORT_STAT_POWER ;
 unsigned int USB_PORT_STAT_RESET ;
 scalar_t__ USB_SPEED_SUPER ;
 unsigned int USB_SS_PORT_STAT_POWER ;
 TYPE_6__* dummy_hcd_to_hcd (struct dummy_hcd*) ;
 int set_link_state_by_speed (struct dummy_hcd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_activity (struct dummy*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int usb_gadget_udc_reset (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void set_link_state(struct dummy_hcd *dum_hcd)
{
 struct dummy *dum = dum_hcd->dum;
 unsigned int power_bit;

 dum_hcd->active = 0;
 if (dum->pullup)
  if ((dummy_hcd_to_hcd(dum_hcd)->speed == HCD_USB3 &&
       dum->gadget.speed != USB_SPEED_SUPER) ||
      (dummy_hcd_to_hcd(dum_hcd)->speed != HCD_USB3 &&
       dum->gadget.speed == USB_SPEED_SUPER))
   return;

 set_link_state_by_speed(dum_hcd);
 power_bit = (dummy_hcd_to_hcd(dum_hcd)->speed == HCD_USB3 ?
   USB_SS_PORT_STAT_POWER : USB_PORT_STAT_POWER);

 if ((dum_hcd->port_status & USB_PORT_STAT_ENABLE) == 0 ||
      dum_hcd->active)
  dum_hcd->resuming = 0;


 if ((dum_hcd->port_status & power_bit) == 0 ||
   (dum_hcd->port_status & USB_PORT_STAT_RESET) != 0) {
  unsigned int disconnect = power_bit &
    dum_hcd->old_status & (~dum_hcd->port_status);
  unsigned int reset = USB_PORT_STAT_RESET &
    (~dum_hcd->old_status) & dum_hcd->port_status;


  if (dum->ints_enabled && (disconnect || reset)) {
   stop_activity(dum);
   ++dum->callback_usage;
   spin_unlock(&dum->lock);
   if (reset)
    usb_gadget_udc_reset(&dum->gadget, dum->driver);
   else
    dum->driver->disconnect(&dum->gadget);
   spin_lock(&dum->lock);
   --dum->callback_usage;
  }
 } else if (dum_hcd->active != dum_hcd->old_active &&
   dum->ints_enabled) {
  ++dum->callback_usage;
  spin_unlock(&dum->lock);
  if (dum_hcd->old_active && dum->driver->suspend)
   dum->driver->suspend(&dum->gadget);
  else if (!dum_hcd->old_active && dum->driver->resume)
   dum->driver->resume(&dum->gadget);
  spin_lock(&dum->lock);
  --dum->callback_usage;
 }

 dum_hcd->old_status = dum_hcd->port_status;
 dum_hcd->old_active = dum_hcd->active;
}
