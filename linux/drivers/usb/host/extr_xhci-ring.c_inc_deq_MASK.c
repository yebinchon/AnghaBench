#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_ring {scalar_t__ type; int cycle_state; TYPE_1__* deq_seg; scalar_t__ dequeue; int /*<<< orphan*/  num_trbs_free; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_3__ {scalar_t__ trbs; struct TYPE_3__* next; } ;

/* Variables and functions */
 scalar_t__ TYPE_EVENT ; 
 scalar_t__ FUNC0 (struct xhci_ring*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_ring*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void FUNC4(struct xhci_hcd *xhci, struct xhci_ring *ring)
{
	/* event ring doesn't have link trbs, check for last trb */
	if (ring->type == TYPE_EVENT) {
		if (!FUNC1(ring->deq_seg, ring->dequeue)) {
			ring->dequeue++;
			goto out;
		}
		if (FUNC0(ring, ring->deq_seg, ring->dequeue))
			ring->cycle_state ^= 1;
		ring->deq_seg = ring->deq_seg->next;
		ring->dequeue = ring->deq_seg->trbs;
		goto out;
	}

	/* All other rings have link trbs */
	if (!FUNC3(ring->dequeue)) {
		ring->dequeue++;
		ring->num_trbs_free++;
	}
	while (FUNC3(ring->dequeue)) {
		ring->deq_seg = ring->deq_seg->next;
		ring->dequeue = ring->deq_seg->trbs;
	}

out:
	FUNC2(ring);

	return;
}