
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
struct TYPE_4__ {int * field; } ;
union xhci_trb {TYPE_2__ link; TYPE_1__ generic; } ;
typedef int u32 ;
struct xhci_ring {scalar_t__ type; int cycle_state; union xhci_trb* enqueue; TYPE_3__* enq_seg; int num_trbs_free; } ;
struct xhci_hcd {int quirks; } ;
struct TYPE_6__ {union xhci_trb* trbs; struct TYPE_6__* next; } ;


 int TRB_CHAIN ;
 int TRB_CYCLE ;
 scalar_t__ TYPE_ISOC ;
 int XHCI_AMD_0x96_HOST ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ link_trb_toggles_cycle (union xhci_trb*) ;
 int trace_xhci_inc_enq (struct xhci_ring*) ;
 scalar_t__ trb_is_link (union xhci_trb*) ;
 int wmb () ;
 int xhci_link_trb_quirk (struct xhci_hcd*) ;

__attribute__((used)) static void inc_enq(struct xhci_hcd *xhci, struct xhci_ring *ring,
   bool more_trbs_coming)
{
 u32 chain;
 union xhci_trb *next;

 chain = le32_to_cpu(ring->enqueue->generic.field[3]) & TRB_CHAIN;

 if (!trb_is_link(ring->enqueue))
  ring->num_trbs_free--;
 next = ++(ring->enqueue);


 while (trb_is_link(next)) {
  if (!chain && !more_trbs_coming)
   break;





  if (!(ring->type == TYPE_ISOC &&
        (xhci->quirks & XHCI_AMD_0x96_HOST)) &&
      !xhci_link_trb_quirk(xhci)) {
   next->link.control &= cpu_to_le32(~TRB_CHAIN);
   next->link.control |= cpu_to_le32(chain);
  }

  wmb();
  next->link.control ^= cpu_to_le32(TRB_CYCLE);


  if (link_trb_toggles_cycle(next))
   ring->cycle_state ^= 1;

  ring->enq_seg = ring->enq_seg->next;
  ring->enqueue = ring->enq_seg->trbs;
  next = ring->enqueue;
 }

 trace_xhci_inc_enq(ring);
}
