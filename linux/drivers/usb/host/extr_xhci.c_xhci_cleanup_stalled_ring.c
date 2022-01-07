
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_td {TYPE_1__* urb; } ;
struct xhci_hcd {int quirks; } ;
struct xhci_dequeue_state {int new_deq_seg; int new_deq_ptr; } ;
struct usb_device {int slot_id; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int XHCI_RESET_EP_QUIRK ;
 int trace_xhci_dbg_quirks ;
 int trace_xhci_dbg_reset_ep ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*) ;
 int xhci_find_new_dequeue_state (struct xhci_hcd*,int ,unsigned int,unsigned int,struct xhci_td*,struct xhci_dequeue_state*) ;
 int xhci_queue_new_dequeue_state (struct xhci_hcd*,int ,unsigned int,struct xhci_dequeue_state*) ;
 int xhci_setup_input_ctx_for_quirk (struct xhci_hcd*,int ,unsigned int,struct xhci_dequeue_state*) ;

void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci, unsigned int ep_index,
          unsigned int stream_id, struct xhci_td *td)
{
 struct xhci_dequeue_state deq_state;
 struct usb_device *udev = td->urb->dev;

 xhci_dbg_trace(xhci, trace_xhci_dbg_reset_ep,
   "Cleaning up stalled endpoint ring");



 xhci_find_new_dequeue_state(xhci, udev->slot_id,
   ep_index, stream_id, td, &deq_state);

 if (!deq_state.new_deq_ptr || !deq_state.new_deq_seg)
  return;




 if (!(xhci->quirks & XHCI_RESET_EP_QUIRK)) {
  xhci_dbg_trace(xhci, trace_xhci_dbg_reset_ep,
    "Queueing new dequeue state");
  xhci_queue_new_dequeue_state(xhci, udev->slot_id,
    ep_index, &deq_state);
 } else {





  xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
    "Setting up input context for "
    "configure endpoint command");
  xhci_setup_input_ctx_for_quirk(xhci, udev->slot_id,
    ep_index, &deq_state);
 }
}
