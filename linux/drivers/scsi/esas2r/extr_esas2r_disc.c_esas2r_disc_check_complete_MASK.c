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
typedef  int u32 ;
struct esas2r_adapter {int disc_wait_time; int disc_start_time; scalar_t__ disc_wait_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_DEV_CNT_OK ; 
 int /*<<< orphan*/  AF2_DEV_SCAN ; 
 int /*<<< orphan*/  AF_DISC_IN_PROG ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  AF_DISC_POLLED ; 
 int /*<<< orphan*/  AF_PORT_CHANGE ; 
 int /*<<< orphan*/  DCDE_DEV_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct esas2r_adapter *a)
{
	unsigned long flags;

	FUNC4();

	/* check to see if we should be waiting for devices */
	if (a->disc_wait_time) {
		u32 currtime = FUNC6(jiffies);
		u32 time = currtime - a->disc_start_time;

		/*
		 * Wait until the device wait time is exhausted or the device
		 * wait count is satisfied.
		 */
		if (time < a->disc_wait_time
		    && (FUNC3(a) < a->disc_wait_cnt
			|| a->disc_wait_cnt == 0)) {
			/* After three seconds of waiting, schedule a scan. */
			if (time >= 3000
			    && !FUNC10(AF2_DEV_SCAN, &a->flags2)) {
				FUNC8(&a->mem_lock, flags);
				FUNC2(a, DCDE_DEV_SCAN);
				FUNC9(&a->mem_lock, flags);
			}

			FUNC5();
			return;
		}

		/*
		 * We are done waiting...we think.  Adjust the wait time to
		 * consume events after the count is met.
		 */
		if (!FUNC10(AF2_DEV_CNT_OK, &a->flags2))
			a->disc_wait_time = time + 3000;

		/* If we haven't done a full scan yet, do it now. */
		if (!FUNC10(AF2_DEV_SCAN, &a->flags2)) {
			FUNC8(&a->mem_lock, flags);
			FUNC2(a, DCDE_DEV_SCAN);
			FUNC9(&a->mem_lock, flags);
			FUNC5();
			return;
		}

		/*
		 * Now, if there is still time left to consume events, continue
		 * waiting.
		 */
		if (time < a->disc_wait_time) {
			FUNC5();
			return;
		}
	} else {
		if (!FUNC10(AF2_DEV_SCAN, &a->flags2)) {
			FUNC8(&a->mem_lock, flags);
			FUNC2(a, DCDE_DEV_SCAN);
			FUNC9(&a->mem_lock, flags);
		}
	}

	/* We want to stop waiting for devices. */
	a->disc_wait_time = 0;

	if (FUNC11(AF_DISC_POLLED, &a->flags) &&
	    FUNC11(AF_DISC_IN_PROG, &a->flags)) {
		/*
		 * Polled discovery is still pending so continue the active
		 * discovery until it is done.  At that point, we will stop
		 * polled discovery and transition to interrupt driven
		 * discovery.
		 */
	} else {
		/*
		 * Done waiting for devices.  Note that we get here immediately
		 * after deferred waiting completes because that is interrupt
		 * driven; i.e. There is no transition.
		 */
		FUNC1(a);
		FUNC0(AF_DISC_PENDING, &a->flags);

		/*
		 * We have deferred target state changes until now because we
		 * don't want to report any removals (due to the first arrival)
		 * until the device wait time expires.
		 */
		FUNC7(AF_PORT_CHANGE, &a->flags);
	}

	FUNC5();
}