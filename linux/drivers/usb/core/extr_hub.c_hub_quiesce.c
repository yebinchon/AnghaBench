
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clear_work; scalar_t__ hub; } ;
struct usb_hub {int quiescing; TYPE_2__ tt; int leds; scalar_t__ has_indicators; int urb; int irq_urb_retry; TYPE_1__** ports; int irq_urb_lock; struct usb_device* hdev; } ;
struct usb_device {int maxchild; } ;
typedef enum hub_quiescing_type { ____Placeholder_hub_quiescing_type } hub_quiescing_type ;
struct TYPE_3__ {scalar_t__ child; } ;


 int HUB_SUSPEND ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_disconnect (scalar_t__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void hub_quiesce(struct usb_hub *hub, enum hub_quiescing_type type)
{
 struct usb_device *hdev = hub->hdev;
 unsigned long flags;
 int i;


 spin_lock_irqsave(&hub->irq_urb_lock, flags);
 hub->quiescing = 1;
 spin_unlock_irqrestore(&hub->irq_urb_lock, flags);

 if (type != HUB_SUSPEND) {

  for (i = 0; i < hdev->maxchild; ++i) {
   if (hub->ports[i]->child)
    usb_disconnect(&hub->ports[i]->child);
  }
 }


 del_timer_sync(&hub->irq_urb_retry);
 usb_kill_urb(hub->urb);
 if (hub->has_indicators)
  cancel_delayed_work_sync(&hub->leds);
 if (hub->tt.hub)
  flush_work(&hub->tt.clear_work);
}
