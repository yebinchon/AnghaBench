
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_td {int cancelled_td_list; int td_list; struct urb* urb; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int transfer_flags; int pipe; TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 scalar_t__ PIPE_ISOCHRONOUS ;
 int URB_SHORT_NOT_OK ;
 int inc_td_cnt (struct urb*) ;
 scalar_t__ last_td_in_urb (struct xhci_td*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int usb_endpoint_xfer_isoc (int *) ;
 scalar_t__ usb_pipetype (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,struct urb*,scalar_t__,scalar_t__,int) ;
 int xhci_giveback_urb_in_irq (struct xhci_hcd*,struct xhci_td*,int) ;
 int xhci_unmap_td_bounce_buffer (struct xhci_hcd*,struct xhci_ring*,struct xhci_td*) ;
 int xhci_warn (struct xhci_hcd*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int xhci_td_cleanup(struct xhci_hcd *xhci, struct xhci_td *td,
  struct xhci_ring *ep_ring, int *status)
{
 struct urb *urb = ((void*)0);


 urb = td->urb;


 xhci_unmap_td_bounce_buffer(xhci, ep_ring, td);






 if (urb->actual_length > urb->transfer_buffer_length) {
  xhci_warn(xhci, "URB req %u and actual %u transfer length mismatch\n",
     urb->transfer_buffer_length, urb->actual_length);
  urb->actual_length = 0;
  *status = 0;
 }
 list_del_init(&td->td_list);

 if (!list_empty(&td->cancelled_td_list))
  list_del_init(&td->cancelled_td_list);

 inc_td_cnt(urb);

 if (last_td_in_urb(td)) {
  if ((urb->actual_length != urb->transfer_buffer_length &&
       (urb->transfer_flags & URB_SHORT_NOT_OK)) ||
      (*status != 0 && !usb_endpoint_xfer_isoc(&urb->ep->desc)))
   xhci_dbg(xhci, "Giveback URB %p, len = %d, expected = %d, status = %d\n",
     urb, urb->actual_length,
     urb->transfer_buffer_length, *status);


  if (usb_pipetype(urb->pipe) == PIPE_ISOCHRONOUS)
   *status = 0;
  xhci_giveback_urb_in_irq(xhci, td, *status);
 }

 return 0;
}
