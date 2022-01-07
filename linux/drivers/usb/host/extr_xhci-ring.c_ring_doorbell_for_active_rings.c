
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; struct xhci_stream_info* stream_info; TYPE_2__* ring; } ;
struct xhci_stream_info {unsigned int num_streams; TYPE_3__** stream_rings; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct TYPE_6__ {int td_list; } ;
struct TYPE_5__ {int td_list; } ;
struct TYPE_4__ {struct xhci_virt_ep* eps; } ;


 int EP_HAS_STREAMS ;
 int list_empty (int *) ;
 int xhci_ring_ep_doorbell (struct xhci_hcd*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void ring_doorbell_for_active_rings(struct xhci_hcd *xhci,
  unsigned int slot_id,
  unsigned int ep_index)
{
 unsigned int stream_id;
 struct xhci_virt_ep *ep;

 ep = &xhci->devs[slot_id]->eps[ep_index];


 if (!(ep->ep_state & EP_HAS_STREAMS)) {
  if (ep->ring && !(list_empty(&ep->ring->td_list)))
   xhci_ring_ep_doorbell(xhci, slot_id, ep_index, 0);
  return;
 }

 for (stream_id = 1; stream_id < ep->stream_info->num_streams;
   stream_id++) {
  struct xhci_stream_info *stream_info = ep->stream_info;
  if (!list_empty(&stream_info->stream_rings[stream_id]->td_list))
   xhci_ring_ep_doorbell(xhci, slot_id, ep_index,
      stream_id);
 }
}
