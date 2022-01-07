
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int transfer_flags; int status; } ;
struct fhci_hcd {int lock; } ;


 int EINPROGRESS ;
 int EREMOTEIO ;
 int URB_SHORT_NOT_OK ;
 int fhci_to_hcd (struct fhci_hcd*) ;
 int free_urb_priv (struct fhci_hcd*,struct urb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_hcd_giveback_urb (int ,struct urb*,int ) ;
 int usb_hcd_unlink_urb_from_ep (int ,struct urb*) ;

void fhci_urb_complete_free(struct fhci_hcd *fhci, struct urb *urb)
{
 free_urb_priv(fhci, urb);

 if (urb->status == -EINPROGRESS) {
  if (urb->actual_length != urb->transfer_buffer_length &&
    urb->transfer_flags & URB_SHORT_NOT_OK)
   urb->status = -EREMOTEIO;
  else
   urb->status = 0;
 }

 usb_hcd_unlink_urb_from_ep(fhci_to_hcd(fhci), urb);

 spin_unlock(&fhci->lock);

 usb_hcd_giveback_urb(fhci_to_hcd(fhci), urb, urb->status);

 spin_lock(&fhci->lock);
}
