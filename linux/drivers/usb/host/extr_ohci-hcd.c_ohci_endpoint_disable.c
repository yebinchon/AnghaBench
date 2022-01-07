
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {struct ed* hcpriv; TYPE_1__ desc; } ;
struct usb_hcd {int dummy; } ;
struct ohci_hcd {scalar_t__ rh_state; int lock; } ;
struct ed {int state; int dummy; int td_list; } ;




 scalar_t__ OHCI_RH_RUNNING ;
 int ed_free (struct ohci_hcd*,struct ed*) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int list_empty (int *) ;
 int ohci_err (struct ohci_hcd*,char*,struct ed*,int ,int,char*) ;
 int ohci_warn (struct ohci_hcd*,char*) ;
 int ohci_work (struct ohci_hcd*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int td_free (struct ohci_hcd*,int ) ;

__attribute__((used)) static void
ohci_endpoint_disable (struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 unsigned long flags;
 struct ed *ed = ep->hcpriv;
 unsigned limit = 1000;




 if (!ed)
  return;

rescan:
 spin_lock_irqsave (&ohci->lock, flags);

 if (ohci->rh_state != OHCI_RH_RUNNING) {
sanitize:
  ed->state = 129;
  ohci_work(ohci);
 }

 switch (ed->state) {
 case 128:

  if (limit-- == 0) {
   ohci_warn(ohci, "ED unlink timeout\n");
   goto sanitize;
  }
  spin_unlock_irqrestore (&ohci->lock, flags);
  schedule_timeout_uninterruptible(1);
  goto rescan;
 case 129:
  if (list_empty (&ed->td_list)) {
   td_free (ohci, ed->dummy);
   ed_free (ohci, ed);
   break;
  }

 default:



  ohci_err (ohci, "leak ed %p (#%02x) state %d%s\n",
   ed, ep->desc.bEndpointAddress, ed->state,
   list_empty (&ed->td_list) ? "" : " (has tds)");
  td_free (ohci, ed->dummy);
  break;
 }
 ep->hcpriv = ((void*)0);
 spin_unlock_irqrestore (&ohci->lock, flags);
}
