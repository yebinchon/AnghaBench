
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {union xhci_trb* trbs; struct xhci_segment* next; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;


 scalar_t__ trb_is_link (union xhci_trb*) ;

__attribute__((used)) static void next_trb(struct xhci_hcd *xhci,
  struct xhci_ring *ring,
  struct xhci_segment **seg,
  union xhci_trb **trb)
{
 if (trb_is_link(*trb)) {
  *seg = (*seg)->next;
  *trb = ((*seg)->trbs);
 } else {
  (*trb)++;
 }
}
