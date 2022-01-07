
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_ring {unsigned int num_trbs_free; scalar_t__ type; int dequeue; TYPE_1__* deq_seg; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_2__ {int trbs; } ;


 scalar_t__ TYPE_COMMAND ;
 scalar_t__ TYPE_EVENT ;

__attribute__((used)) static inline int room_on_ring(struct xhci_hcd *xhci, struct xhci_ring *ring,
  unsigned int num_trbs)
{
 int num_trbs_in_deq_seg;

 if (ring->num_trbs_free < num_trbs)
  return 0;

 if (ring->type != TYPE_COMMAND && ring->type != TYPE_EVENT) {
  num_trbs_in_deq_seg = ring->dequeue - ring->deq_seg->trbs;
  if (ring->num_trbs_free < num_trbs + num_trbs_in_deq_seg)
   return 0;
 }

 return 1;
}
