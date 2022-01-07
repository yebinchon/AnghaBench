
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct ed* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct td {int urb; } ;
struct fhci_hcd {int lock; } ;
struct ed {int * td_head; } ;


 int fhci_recycle_empty_ed (struct fhci_hcd*,struct ed*) ;
 struct td* fhci_remove_td_from_ed (struct ed*) ;
 int fhci_urb_complete_free (struct fhci_hcd*,int ) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fhci_endpoint_disable(struct usb_hcd *hcd,
      struct usb_host_endpoint *ep)
{
 struct fhci_hcd *fhci;
 struct ed *ed;
 unsigned long flags;

 fhci = hcd_to_fhci(hcd);
 spin_lock_irqsave(&fhci->lock, flags);
 ed = ep->hcpriv;
 if (ed) {
  while (ed->td_head != ((void*)0)) {
   struct td *td = fhci_remove_td_from_ed(ed);
   fhci_urb_complete_free(fhci, td->urb);
  }
  fhci_recycle_empty_ed(fhci, ed);
  ep->hcpriv = ((void*)0);
 }
 spin_unlock_irqrestore(&fhci->lock, flags);
}
