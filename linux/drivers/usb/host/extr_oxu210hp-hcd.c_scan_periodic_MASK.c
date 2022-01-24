#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union ehci_shadow {int /*<<< orphan*/ * ptr; TYPE_2__* qh; } ;
struct oxu_hcd {int periodic_size; unsigned int next_uframe; int* periodic; TYPE_1__* regs; union ehci_shadow* pshadow; } ;
typedef  int __le32 ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
struct TYPE_9__ {int hw_next; int /*<<< orphan*/  qtd_list; union ehci_shadow qh_next; } ;
struct TYPE_8__ {int /*<<< orphan*/  frame_index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
#define  Q_TYPE_QH 128 
 int /*<<< orphan*/  FUNC2 (struct oxu_hcd*,TYPE_2__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (struct oxu_hcd*) ; 
 unsigned int FUNC6 (struct oxu_hcd*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned int) ; 

__attribute__((used)) static void FUNC11(struct oxu_hcd *oxu)
{
	unsigned frame, clock, now_uframe, mod;
	unsigned modified;

	mod = oxu->periodic_size << 3;

	/*
	 * When running, scan from last scan point up to "now"
	 * else clean up by scanning everything that's left.
	 * Touches as few pages as possible:  cache-friendly.
	 */
	now_uframe = oxu->next_uframe;
	if (FUNC0(FUNC5(oxu)->state))
		clock = FUNC9(&oxu->regs->frame_index);
	else
		clock = now_uframe + mod - 1;
	clock %= mod;

	for (;;) {
		union ehci_shadow	q, *q_p;
		__le32			type, *hw_p;

		/* don't scan past the live uframe */
		frame = now_uframe >> 3;
		if (frame != (clock >> 3)) {
			/* safe to scan the whole frame at once */
			now_uframe |= 0x07;
		}

restart:
		/* scan each element in frame's queue for completions */
		q_p = &oxu->pshadow[frame];
		hw_p = &oxu->periodic[frame];
		q.ptr = q_p->ptr;
		type = FUNC1(*hw_p);
		modified = 0;

		while (q.ptr != NULL) {
			union ehci_shadow temp;

			switch (type) {
			case Q_TYPE_QH:
				/* handle any completions */
				temp.qh = FUNC7(q.qh);
				type = FUNC1(q.qh->hw_next);
				q = q.qh->qh_next;
				modified = FUNC6(oxu, temp.qh);
				if (FUNC10(FUNC3(&temp.qh->qtd_list)))
					FUNC2(oxu, temp.qh);
				FUNC8(temp.qh);
				break;
			default:
				FUNC4(oxu, "corrupt type %d frame %d shadow %p\n",
					type, frame, q.ptr);
				q.ptr = NULL;
			}

			/* assume completion callbacks modify the queue */
			if (FUNC10(modified))
				goto restart;
		}

		/* Stop when we catch up to the HC */

		/* FIXME:  this assumes we won't get lapped when
		 * latencies climb; that should be rare, but...
		 * detect it, and just go all the way around.
		 * FLR might help detect this case, so long as latencies
		 * don't exceed periodic_size msec (default 1.024 sec).
		 */

		/* FIXME: likewise assumes HC doesn't halt mid-scan */

		if (now_uframe == clock) {
			unsigned	now;

			if (!FUNC0(FUNC5(oxu)->state))
				break;
			oxu->next_uframe = now_uframe;
			now = FUNC9(&oxu->regs->frame_index) % mod;
			if (now_uframe == now)
				break;

			/* rescan the rest of this frame, then ... */
			clock = now;
		} else {
			now_uframe++;
			now_uframe %= mod;
		}
	}
}