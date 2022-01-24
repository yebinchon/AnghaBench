#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xenvif_queue {scalar_t__ id; int /*<<< orphan*/  rx_queue; struct xenvif* vif; } ;
struct xenvif {scalar_t__ stall_timeout; scalar_t__ disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct xenvif_queue*) ; 
 scalar_t__ FUNC10 (struct xenvif_queue*) ; 
 scalar_t__ FUNC11 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct xenvif_queue*) ; 

int FUNC13(void *data)
{
	struct xenvif_queue *queue = data;
	struct xenvif *vif = queue->vif;

	if (!vif->stall_timeout)
		FUNC6(queue);

	for (;;) {
		FUNC12(queue);

		if (FUNC1())
			break;

		/* This frontend is found to be rogue, disable it in
		 * kthread context. Currently this is only set when
		 * netback finds out frontend sends malformed packet,
		 * but we cannot disable the interface in softirq
		 * context so we defer it here, if this thread is
		 * associated with queue 0.
		 */
		if (FUNC3(vif->disabled && queue->id == 0)) {
			FUNC4(vif);
			break;
		}

		if (!FUNC2(&queue->rx_queue))
			FUNC7(queue);

		/* If the guest hasn't provided any Rx slots for a
		 * while it's probably not responsive, drop the
		 * carrier so packets are dropped earlier.
		 */
		if (vif->stall_timeout) {
			if (FUNC11(queue))
				FUNC5(queue);
			else if (FUNC10(queue))
				FUNC6(queue);
		}

		/* Queued packets may have foreign pages from other
		 * domains.  These cannot be queued indefinitely as
		 * this would starve guests of grant refs and transmit
		 * slots.
		 */
		FUNC8(queue);

		FUNC0();
	}

	/* Bin any remaining skbs */
	FUNC9(queue);

	return 0;
}