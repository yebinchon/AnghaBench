
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xhci_virt_ep {int dummy; } ;
struct xhci_virt_device {int out_ctx; } ;
struct xhci_transfer_event {int transfer_len; int buffer; int flags; } ;
struct xhci_td {scalar_t__ last_trb; } ;
struct xhci_ring {scalar_t__ dequeue; int stream_id; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;


 scalar_t__ COMP_STALL_ERROR ;
 scalar_t__ COMP_STOPPED ;
 scalar_t__ COMP_STOPPED_LENGTH_INVALID ;
 scalar_t__ COMP_STOPPED_SHORT_PACKET ;
 int EP_HARD_RESET ;
 scalar_t__ GET_COMP_CODE (int ) ;
 int TRB_TO_EP_ID (int ) ;
 unsigned int TRB_TO_SLOT_ID (int ) ;
 int inc_deq (struct xhci_hcd*,struct xhci_ring*) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int xhci_cleanup_halted_endpoint (struct xhci_hcd*,unsigned int,int,int ,struct xhci_td*,int ) ;
 struct xhci_ring* xhci_dma_to_transfer_ring (struct xhci_virt_ep*,int ) ;
 struct xhci_ep_ctx* xhci_get_ep_ctx (struct xhci_hcd*,int ,int) ;
 scalar_t__ xhci_requires_manual_halt_cleanup (struct xhci_hcd*,struct xhci_ep_ctx*,scalar_t__) ;
 int xhci_td_cleanup (struct xhci_hcd*,struct xhci_td*,struct xhci_ring*,int*) ;

__attribute__((used)) static int finish_td(struct xhci_hcd *xhci, struct xhci_td *td,
 struct xhci_transfer_event *event,
 struct xhci_virt_ep *ep, int *status)
{
 struct xhci_virt_device *xdev;
 struct xhci_ep_ctx *ep_ctx;
 struct xhci_ring *ep_ring;
 unsigned int slot_id;
 u32 trb_comp_code;
 int ep_index;

 slot_id = TRB_TO_SLOT_ID(le32_to_cpu(event->flags));
 xdev = xhci->devs[slot_id];
 ep_index = TRB_TO_EP_ID(le32_to_cpu(event->flags)) - 1;
 ep_ring = xhci_dma_to_transfer_ring(ep, le64_to_cpu(event->buffer));
 ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
 trb_comp_code = GET_COMP_CODE(le32_to_cpu(event->transfer_len));

 if (trb_comp_code == COMP_STOPPED_LENGTH_INVALID ||
   trb_comp_code == COMP_STOPPED ||
   trb_comp_code == COMP_STOPPED_SHORT_PACKET) {




  return 0;
 }
 if (trb_comp_code == COMP_STALL_ERROR ||
  xhci_requires_manual_halt_cleanup(xhci, ep_ctx,
      trb_comp_code)) {





  xhci_cleanup_halted_endpoint(xhci, slot_id, ep_index,
     ep_ring->stream_id, td, EP_HARD_RESET);
 } else {

  while (ep_ring->dequeue != td->last_trb)
   inc_deq(xhci, ep_ring);
  inc_deq(xhci, ep_ring);
 }

 return xhci_td_cleanup(xhci, td, ep_ring, status);
}
