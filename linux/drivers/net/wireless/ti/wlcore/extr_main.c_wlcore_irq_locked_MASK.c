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
typedef  int u32 ;
struct wl1271 {int irq_flags; scalar_t__ state; int watchdog_recovery; int /*<<< orphan*/  dev; int /*<<< orphan*/  deferred_rx_queue; int /*<<< orphan*/  deferred_tx_queue; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  flags; TYPE_1__* fw_status; } ;
struct TYPE_3__ {int intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_IRQ ; 
 int EIO ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int WL1271_ACX_INTR_DATA ; 
 int WL1271_ACX_INTR_EVENT_A ; 
 int WL1271_ACX_INTR_EVENT_B ; 
 int WL1271_ACX_INTR_HW_AVAILABLE ; 
 int WL1271_ACX_INTR_INIT_COMPLETE ; 
 int WL1271_ACX_INTR_WATCHDOG ; 
 int WL1271_ACX_SW_INTR_WATCHDOG ; 
 unsigned int WL1271_DEFERRED_QUEUE_LIMIT ; 
 int /*<<< orphan*/  WL1271_FLAG_FW_TX_BUSY ; 
 int /*<<< orphan*/  WL1271_FLAG_IRQ_RUNNING ; 
 int WL1271_IRQ_MAX_LOOPS ; 
 int WLCORE_ALL_INTR_MASK ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wl1271*) ; 
 scalar_t__ FUNC16 (struct wl1271*) ; 
 int FUNC17 (struct wl1271*,TYPE_1__*) ; 
 int FUNC18 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC19 (struct wl1271*) ; 
 int FUNC20 (struct wl1271*,TYPE_1__*) ; 
 int FUNC21 (struct wl1271*) ; 

__attribute__((used)) static int FUNC22(struct wl1271 *wl)
{
	int ret = 0;
	u32 intr;
	int loopcount = WL1271_IRQ_MAX_LOOPS;
	bool done = false;
	unsigned int defer_count;
	unsigned long flags;

	/*
	 * In case edge triggered interrupt must be used, we cannot iterate
	 * more than once without introducing race conditions with the hardirq.
	 */
	if (wl->irq_flags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING))
		loopcount = 1;

	FUNC12(DEBUG_IRQ, "IRQ work");

	if (FUNC11(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out;
	}

	while (!done && loopcount--) {
		/*
		 * In order to avoid a race with the hardirq, clear the flag
		 * before acknowledging the chip.
		 */
		FUNC0(WL1271_FLAG_IRQ_RUNNING, &wl->flags);
		FUNC7();

		ret = FUNC17(wl, wl->fw_status);
		if (ret < 0)
			goto out;

		FUNC19(wl);

		intr = wl->fw_status->intr;
		intr &= WLCORE_ALL_INTR_MASK;
		if (!intr) {
			done = true;
			continue;
		}

		if (FUNC11(intr & WL1271_ACX_INTR_WATCHDOG)) {
			FUNC13("HW watchdog interrupt received! starting recovery.");
			wl->watchdog_recovery = true;
			ret = -EIO;

			/* restarting the chip. ignore any other interrupt. */
			goto out;
		}

		if (FUNC11(intr & WL1271_ACX_SW_INTR_WATCHDOG)) {
			FUNC13("SW watchdog interrupt received! "
				     "starting recovery.");
			wl->watchdog_recovery = true;
			ret = -EIO;

			/* restarting the chip. ignore any other interrupt. */
			goto out;
		}

		if (FUNC1(intr & WL1271_ACX_INTR_DATA)) {
			FUNC12(DEBUG_IRQ, "WL1271_ACX_INTR_DATA");

			ret = FUNC20(wl, wl->fw_status);
			if (ret < 0)
				goto out;

			/* Check if any tx blocks were freed */
			FUNC8(&wl->wl_lock, flags);
			if (!FUNC10(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
			    FUNC16(wl) > 0) {
				FUNC9(&wl->wl_lock, flags);
				/*
				 * In order to avoid starvation of the TX path,
				 * call the work function directly.
				 */
				ret = FUNC21(wl);
				if (ret < 0)
					goto out;
			} else {
				FUNC9(&wl->wl_lock, flags);
			}

			/* check for tx results */
			ret = FUNC18(wl);
			if (ret < 0)
				goto out;

			/* Make sure the deferred queues don't get too long */
			defer_count = FUNC6(&wl->deferred_tx_queue) +
				      FUNC6(&wl->deferred_rx_queue);
			if (defer_count > WL1271_DEFERRED_QUEUE_LIMIT)
				FUNC15(wl);
		}

		if (intr & WL1271_ACX_INTR_EVENT_A) {
			FUNC12(DEBUG_IRQ, "WL1271_ACX_INTR_EVENT_A");
			ret = FUNC14(wl, 0);
			if (ret < 0)
				goto out;
		}

		if (intr & WL1271_ACX_INTR_EVENT_B) {
			FUNC12(DEBUG_IRQ, "WL1271_ACX_INTR_EVENT_B");
			ret = FUNC14(wl, 1);
			if (ret < 0)
				goto out;
		}

		if (intr & WL1271_ACX_INTR_INIT_COMPLETE)
			FUNC12(DEBUG_IRQ,
				     "WL1271_ACX_INTR_INIT_COMPLETE");

		if (intr & WL1271_ACX_INTR_HW_AVAILABLE)
			FUNC12(DEBUG_IRQ, "WL1271_ACX_INTR_HW_AVAILABLE");
	}

	FUNC3(wl->dev);
	FUNC4(wl->dev);

out:
	return ret;
}