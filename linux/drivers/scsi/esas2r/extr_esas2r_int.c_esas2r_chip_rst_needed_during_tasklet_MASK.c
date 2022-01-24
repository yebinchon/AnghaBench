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
struct esas2r_adapter {scalar_t__ chip_uptime; scalar_t__ int_mask; int /*<<< orphan*/  prev_dev_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  chip_init_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BUSRST_DETECTED ; 
 int /*<<< orphan*/  AF_BUSRST_NEEDED ; 
 int /*<<< orphan*/  AF_BUSRST_PENDING ; 
 int /*<<< orphan*/  AF_CHPRST_NEEDED ; 
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_CHPRST_STARTED ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  AF_DISABLED ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  AF_FIRST_INIT ; 
 int /*<<< orphan*/  AF_POWER_MGT ; 
 scalar_t__ ESAS2R_CHP_UPTIME_CNT ; 
 scalar_t__ ESAS2R_CHP_UPTIME_MAX ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct esas2r_adapter *a)
{

	FUNC0(AF_CHPRST_NEEDED, &a->flags);
	FUNC0(AF_BUSRST_NEEDED, &a->flags);
	FUNC0(AF_BUSRST_DETECTED, &a->flags);
	FUNC0(AF_BUSRST_PENDING, &a->flags);
	/*
	 * Make sure we don't get attempt more than 3 resets
	 * when the uptime between resets does not exceed one
	 * minute.  This will stop any situation where there is
	 * really something wrong with the hardware.  The way
	 * this works is that we start with uptime ticks at 0.
	 * Each time we do a reset, we add 20 seconds worth to
	 * the count.  Each time a timer tick occurs, as long
	 * as a chip reset is not pending, we decrement the
	 * tick count.  If the uptime ticks ever gets to 60
	 * seconds worth, we disable the adapter from that
	 * point forward.  Three strikes, you're out.
	 */
	if (!FUNC3(a) || (a->chip_uptime >=
					      ESAS2R_CHP_UPTIME_MAX)) {
		FUNC2("*** adapter disabled ***");

		/*
		 * Ok, some kind of hard failure.  Make sure we
		 * exit this loop with chip interrupts
		 * permanently disabled so we don't lock up the
		 * entire system.  Also flag degraded mode to
		 * prevent the heartbeat from trying to recover.
		 */

		FUNC10(AF_DEGRADED_MODE, &a->flags);
		FUNC10(AF_DISABLED, &a->flags);
		FUNC0(AF_CHPRST_PENDING, &a->flags);
		FUNC0(AF_DISC_PENDING, &a->flags);

		FUNC1(a);
		a->int_mask = 0;
		FUNC5(a);

		FUNC4(ESAS2R_LOG_CRIT,
			   "Adapter disabled because of hardware failure");
	} else {
		bool alrdyrst = FUNC11(AF_CHPRST_STARTED, &a->flags);

		if (!alrdyrst)
			/*
			 * Only disable interrupts if this is
			 * the first reset attempt.
			 */
			FUNC1(a);

		if ((FUNC12(AF_POWER_MGT, &a->flags)) &&
		    !FUNC12(AF_FIRST_INIT, &a->flags) && !alrdyrst) {
			/*
			 * Don't reset the chip on the first
			 * deferred power up attempt.
			 */
		} else {
			FUNC2("*** resetting chip ***");
			FUNC6(a);
		}

		/* Kick off the reinitialization */
		a->chip_uptime += ESAS2R_CHP_UPTIME_CNT;
		a->chip_init_time = FUNC9(jiffies);
		if (!FUNC12(AF_POWER_MGT, &a->flags)) {
			FUNC5(a);

			if (!alrdyrst) {
				/* Remove devices now that I/O is cleaned up. */
				a->prev_dev_cnt =
					FUNC7(a);
				FUNC8(a, false);
			}
		}

		a->int_mask = 0;
	}
}