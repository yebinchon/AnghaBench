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
struct wl1271 {int /*<<< orphan*/  flags; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/ * tx_queue_count; int /*<<< orphan*/  dummy_packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_FLAG_DUMMY_PACKET_PENDING ; 
 int /*<<< orphan*/  WL1271_FLAG_FW_TX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1271*) ; 

int FUNC7(struct wl1271 *wl)
{
	unsigned long flags;
	int q;

	/* no need to queue a new dummy packet if one is already pending */
	if (FUNC4(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags))
		return 0;

	q = FUNC5(FUNC1(wl->dummy_packet));

	FUNC2(&wl->wl_lock, flags);
	FUNC0(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags);
	wl->tx_queue_count[q]++;
	FUNC3(&wl->wl_lock, flags);

	/* The FW is low on RX memory blocks, so send the dummy packet asap */
	if (!FUNC4(WL1271_FLAG_FW_TX_BUSY, &wl->flags))
		return FUNC6(wl);

	/*
	 * If the FW TX is busy, TX work will be scheduled by the threaded
	 * interrupt handler function
	 */
	return 0;
}