#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef  int u32 ;
struct xhci_segment {int dummy; } ;
struct xhci_ring {struct xhci_segment* deq_seg; union xhci_trb* dequeue; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment**,union xhci_trb**) ; 
 int /*<<< orphan*/  FUNC3 (union xhci_trb*) ; 
 int /*<<< orphan*/  FUNC4 (union xhci_trb*) ; 

__attribute__((used)) static int FUNC5(struct xhci_hcd *xhci, struct xhci_ring *ring,
			   union xhci_trb *stop_trb)
{
	u32 sum;
	union xhci_trb *trb = ring->dequeue;
	struct xhci_segment *seg = ring->deq_seg;

	for (sum = 0; trb != stop_trb; FUNC2(xhci, ring, &seg, &trb)) {
		if (!FUNC4(trb) && !FUNC3(trb))
			sum += FUNC0(FUNC1(trb->generic.field[2]));
	}
	return sum;
}