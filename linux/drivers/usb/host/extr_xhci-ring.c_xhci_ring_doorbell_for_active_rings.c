
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;


 int ring_doorbell_for_active_rings (struct xhci_hcd*,unsigned int,unsigned int) ;

void xhci_ring_doorbell_for_active_rings(struct xhci_hcd *xhci,
  unsigned int slot_id,
  unsigned int ep_index)
{
 ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
}
