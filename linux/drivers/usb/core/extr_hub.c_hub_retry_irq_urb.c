
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int dummy; } ;
struct timer_list {int dummy; } ;


 struct usb_hub* from_timer (int ,struct timer_list*,int ) ;
 struct usb_hub* hub ;
 int hub_resubmit_irq_urb (struct usb_hub*) ;
 int irq_urb_retry ;

__attribute__((used)) static void hub_retry_irq_urb(struct timer_list *t)
{
 struct usb_hub *hub = from_timer(hub, t, irq_urb_retry);

 hub_resubmit_irq_urb(hub);
}
