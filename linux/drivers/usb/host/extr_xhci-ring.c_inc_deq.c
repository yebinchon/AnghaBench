
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_ring {scalar_t__ type; int cycle_state; TYPE_1__* deq_seg; scalar_t__ dequeue; int num_trbs_free; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_3__ {scalar_t__ trbs; struct TYPE_3__* next; } ;


 scalar_t__ TYPE_EVENT ;
 scalar_t__ last_trb_on_ring (struct xhci_ring*,TYPE_1__*,scalar_t__) ;
 int last_trb_on_seg (TYPE_1__*,scalar_t__) ;
 int trace_xhci_inc_deq (struct xhci_ring*) ;
 scalar_t__ trb_is_link (scalar_t__) ;

void inc_deq(struct xhci_hcd *xhci, struct xhci_ring *ring)
{

 if (ring->type == TYPE_EVENT) {
  if (!last_trb_on_seg(ring->deq_seg, ring->dequeue)) {
   ring->dequeue++;
   goto out;
  }
  if (last_trb_on_ring(ring, ring->deq_seg, ring->dequeue))
   ring->cycle_state ^= 1;
  ring->deq_seg = ring->deq_seg->next;
  ring->dequeue = ring->deq_seg->trbs;
  goto out;
 }


 if (!trb_is_link(ring->dequeue)) {
  ring->dequeue++;
  ring->num_trbs_free++;
 }
 while (trb_is_link(ring->dequeue)) {
  ring->deq_seg = ring->deq_seg->next;
  ring->dequeue = ring->deq_seg->trbs;
 }

out:
 trace_xhci_inc_deq(ring);

 return;
}
