
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct urb {int stream_id; TYPE_2__* ep; TYPE_1__* dev; } ;
struct TYPE_4__ {int desc; } ;
struct TYPE_3__ {int slot_id; } ;


 int xhci_get_endpoint_index (int *) ;
 struct xhci_ring* xhci_triad_to_transfer_ring (struct xhci_hcd*,int ,int ,int ) ;

__attribute__((used)) static inline struct xhci_ring *xhci_urb_to_transfer_ring(struct xhci_hcd *xhci,
        struct urb *urb)
{
 return xhci_triad_to_transfer_ring(xhci, urb->dev->slot_id,
     xhci_get_endpoint_index(&urb->ep->desc),
     urb->stream_id);
}
