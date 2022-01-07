
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; TYPE_1__* stream_info; struct xhci_ring* ring; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {TYPE_2__** devs; } ;
struct TYPE_4__ {struct xhci_virt_ep* eps; } ;
struct TYPE_3__ {unsigned int num_streams; struct xhci_ring** stream_rings; } ;


 int EP_HAS_STREAMS ;
 int xhci_warn (struct xhci_hcd*,char*,unsigned int,unsigned int,...) ;

struct xhci_ring *xhci_triad_to_transfer_ring(struct xhci_hcd *xhci,
  unsigned int slot_id, unsigned int ep_index,
  unsigned int stream_id)
{
 struct xhci_virt_ep *ep;

 ep = &xhci->devs[slot_id]->eps[ep_index];

 if (!(ep->ep_state & EP_HAS_STREAMS))
  return ep->ring;

 if (stream_id == 0) {
  xhci_warn(xhci,
    "WARN: Slot ID %u, ep index %u has streams, "
    "but URB has no stream ID.\n",
    slot_id, ep_index);
  return ((void*)0);
 }

 if (stream_id < ep->stream_info->num_streams)
  return ep->stream_info->stream_rings[stream_id];

 xhci_warn(xhci,
   "WARN: Slot ID %u, ep index %u has "
   "stream IDs 1 to %u allocated, "
   "but stream ID %u is requested.\n",
   slot_id, ep_index,
   ep->stream_info->num_streams - 1,
   stream_id);
 return ((void*)0);
}
