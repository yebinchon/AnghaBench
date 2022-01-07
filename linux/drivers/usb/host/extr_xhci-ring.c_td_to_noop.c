
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_td {union xhci_trb* last_trb; union xhci_trb* first_trb; struct xhci_segment* start_seg; } ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;


 int TRB_CYCLE ;
 int TRB_TR_NOOP ;
 int cpu_to_le32 (int ) ;
 int next_trb (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ;
 int trb_to_noop (union xhci_trb*,int ) ;

__attribute__((used)) static void td_to_noop(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
         struct xhci_td *td, bool flip_cycle)
{
 struct xhci_segment *seg = td->start_seg;
 union xhci_trb *trb = td->first_trb;

 while (1) {
  trb_to_noop(trb, TRB_TR_NOOP);


  if (flip_cycle && trb != td->first_trb && trb != td->last_trb)
   trb->generic.field[3] ^= cpu_to_le32(TRB_CYCLE);

  if (trb == td->last_trb)
   break;

  next_trb(xhci, ep_ring, &seg, &trb);
 }
}
