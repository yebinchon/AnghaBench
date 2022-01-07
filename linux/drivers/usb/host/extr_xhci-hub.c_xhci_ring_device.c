
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_virt_ep {int ep_state; TYPE_3__* ring; TYPE_2__* stream_info; } ;
struct xhci_hcd {TYPE_1__** devs; } ;
struct TYPE_6__ {scalar_t__ dequeue; } ;
struct TYPE_5__ {int num_streams; } ;
struct TYPE_4__ {struct xhci_virt_ep* eps; } ;


 int EP_HAS_STREAMS ;
 int LAST_EP_INDEX ;
 int xhci_ring_ep_doorbell (struct xhci_hcd*,int,int,int) ;

void xhci_ring_device(struct xhci_hcd *xhci, int slot_id)
{
 int i, s;
 struct xhci_virt_ep *ep;

 for (i = 0; i < LAST_EP_INDEX + 1; i++) {
  ep = &xhci->devs[slot_id]->eps[i];

  if (ep->ep_state & EP_HAS_STREAMS) {
   for (s = 1; s < ep->stream_info->num_streams; s++)
    xhci_ring_ep_doorbell(xhci, slot_id, i, s);
  } else if (ep->ring && ep->ring->dequeue) {
   xhci_ring_ep_doorbell(xhci, slot_id, i, 0);
  }
 }

 return;
}
