
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {union xhci_trb* trbs; } ;


 int TRBS_PER_SEGMENT ;

__attribute__((used)) static bool last_trb_on_seg(struct xhci_segment *seg, union xhci_trb *trb)
{
 return trb == &seg->trbs[TRBS_PER_SEGMENT - 1];
}
