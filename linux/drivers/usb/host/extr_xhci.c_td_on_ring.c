
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_td {struct xhci_segment* start_seg; } ;
struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_ring {struct xhci_segment* first_seg; } ;



__attribute__((used)) static bool td_on_ring(struct xhci_td *td, struct xhci_ring *ring)
{
 struct xhci_segment *seg = ring->first_seg;

 if (!td || !td->start_seg)
  return 0;
 do {
  if (seg == td->start_seg)
   return 1;
  seg = seg->next;
 } while (seg && seg != ring->first_seg);

 return 0;
}
