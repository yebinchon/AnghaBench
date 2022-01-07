
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {scalar_t__ next; } ;
struct xhci_ring {scalar_t__ first_seg; } ;


 scalar_t__ last_trb_on_seg (struct xhci_segment*,union xhci_trb*) ;

__attribute__((used)) static bool last_trb_on_ring(struct xhci_ring *ring,
   struct xhci_segment *seg, union xhci_trb *trb)
{
 return last_trb_on_seg(seg, trb) && (seg->next == ring->first_seg);
}
