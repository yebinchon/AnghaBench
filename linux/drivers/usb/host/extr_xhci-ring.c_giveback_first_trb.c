
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_generic_trb {int * field; } ;


 int TRB_CYCLE ;
 int cpu_to_le32 (int) ;
 int wmb () ;
 int xhci_ring_ep_doorbell (struct xhci_hcd*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void giveback_first_trb(struct xhci_hcd *xhci, int slot_id,
  unsigned int ep_index, unsigned int stream_id, int start_cycle,
  struct xhci_generic_trb *start_trb)
{




 wmb();
 if (start_cycle)
  start_trb->field[3] |= cpu_to_le32(start_cycle);
 else
  start_trb->field[3] &= cpu_to_le32(~TRB_CYCLE);
 xhci_ring_ep_doorbell(xhci, slot_id, ep_index, stream_id);
}
