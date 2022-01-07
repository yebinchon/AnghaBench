
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int self; } ;
struct usb_anchor {int dummy; } ;
struct urb {int unlinked; int transfer_flags; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int status; int reject; int use_count; int (* complete ) (struct urb*) ;int * hcpriv; struct usb_anchor* anchor; TYPE_1__* dev; } ;
struct TYPE_2__ {int bus; } ;


 int EREMOTEIO ;
 int URB_SHORT_NOT_OK ;
 int USB_LED_EVENT_HOST ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 scalar_t__ likely (int) ;
 int stub1 (struct urb*) ;
 scalar_t__ unlikely (int) ;
 int unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;
 int usb_anchor_resume_wakeups (struct usb_anchor*) ;
 int usb_anchor_suspend_wakeups (struct usb_anchor*) ;
 int usb_kill_urb_queue ;
 int usb_led_activity (int ) ;
 int usb_put_urb (struct urb*) ;
 int usb_unanchor_urb (struct urb*) ;
 int usbmon_urb_complete (int *,struct urb*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void __usb_hcd_giveback_urb(struct urb *urb)
{
 struct usb_hcd *hcd = bus_to_hcd(urb->dev->bus);
 struct usb_anchor *anchor = urb->anchor;
 int status = urb->unlinked;

 urb->hcpriv = ((void*)0);
 if (unlikely((urb->transfer_flags & URB_SHORT_NOT_OK) &&
     urb->actual_length < urb->transfer_buffer_length &&
     !status))
  status = -EREMOTEIO;

 unmap_urb_for_dma(hcd, urb);
 usbmon_urb_complete(&hcd->self, urb, status);
 usb_anchor_suspend_wakeups(anchor);
 usb_unanchor_urb(urb);
 if (likely(status == 0))
  usb_led_activity(USB_LED_EVENT_HOST);


 urb->status = status;
 urb->complete(urb);

 usb_anchor_resume_wakeups(anchor);
 atomic_dec(&urb->use_count);
 if (unlikely(atomic_read(&urb->reject)))
  wake_up(&usb_kill_urb_queue);
 usb_put_urb(urb);
}
