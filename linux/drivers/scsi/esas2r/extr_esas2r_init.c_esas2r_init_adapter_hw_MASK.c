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
typedef  scalar_t__ u32 ;
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {scalar_t__ fw_version; scalar_t__ disc_start_time; int /*<<< orphan*/  disable_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  int_mask; scalar_t__* fw_rev; int /*<<< orphan*/ * image_type; int /*<<< orphan*/ * flash_rev; struct esas2r_request* first_ae_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  AF_DISC_POLLED ; 
 int /*<<< orphan*/  AF_FIRST_INIT ; 
 int /*<<< orphan*/  AF_NVR_VALID ; 
 int /*<<< orphan*/  AF_TASKLET_SCHEDULED ; 
 int /*<<< orphan*/  ESAS2R_INT_STS_MASK ; 
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (struct esas2r_adapter*) ; 
 scalar_t__ FUNC16 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct esas2r_adapter*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC23 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ num_ae_requests ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__*,char*,int,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC31(struct esas2r_adapter *a, bool init_poll)
{
	bool rslt = false;
	struct esas2r_request *rq;
	u32 i;

	if (FUNC30(AF_DEGRADED_MODE, &a->flags))
		goto exit;

	if (!FUNC30(AF_NVR_VALID, &a->flags)) {
		if (!FUNC18(a))
			FUNC17(ESAS2R_LOG_WARN,
				   "invalid/missing NVRAM parameters");
	}

	if (!FUNC15(a)) {
		FUNC21(a, "init messages failed");
		goto exit;
	}

	/* The firmware is ready. */
	FUNC6(AF_DEGRADED_MODE, &a->flags);
	FUNC6(AF_CHPRST_PENDING, &a->flags);

	/* Post all the async event requests */
	for (i = 0, rq = a->first_ae_req; i < num_ae_requests; i++, rq++)
		FUNC22(a, rq);

	if (!a->flash_rev[0])
		FUNC19(a);

	if (!a->image_type[0])
		FUNC20(a);

	if (a->fw_version == 0)
		a->fw_rev[0] = 0;
	else
		FUNC29(a->fw_rev, "%1d.%02d",
			(int)FUNC2(FUNC1(a->fw_version)),
			(int)FUNC0(FUNC1(a->fw_version)));

	FUNC14("firmware revision: %s", a->fw_rev);

	if (FUNC30(AF_CHPRST_DETECTED, &a->flags)
	    && (FUNC30(AF_FIRST_INIT, &a->flags))) {
		FUNC12(a);
		return true;
	}

	/* initialize discovery */
	FUNC8(a);

	/*
	 * wait for the device wait time to expire here if requested.  this is
	 * usually requested during initial driver load and possibly when
	 * resuming from a low power state.  deferred device waiting will use
	 * interrupts.  chip reset recovery always defers device waiting to
	 * avoid being in a TASKLET too long.
	 */
	if (init_poll) {
		u32 currtime = a->disc_start_time;
		u32 nexttick = 100;
		u32 deltatime;

		/*
		 * Block Tasklets from getting scheduled and indicate this is
		 * polled discovery.
		 */
		FUNC28(AF_TASKLET_SCHEDULED, &a->flags);
		FUNC28(AF_DISC_POLLED, &a->flags);

		/*
		 * Temporarily bring the disable count to zero to enable
		 * deferred processing.  Note that the count is already zero
		 * after the first initialization.
		 */
		if (FUNC30(AF_FIRST_INIT, &a->flags))
			FUNC3(&a->disable_cnt);

		while (FUNC30(AF_DISC_PENDING, &a->flags)) {
			FUNC27(FUNC26(100));

			/*
			 * Determine the need for a timer tick based on the
			 * delta time between this and the last iteration of
			 * this loop.  We don't use the absolute time because
			 * then we would have to worry about when nexttick
			 * wraps and currtime hasn't yet.
			 */
			deltatime = FUNC25(jiffies) - currtime;
			currtime += deltatime;

			/*
			 * Process any waiting discovery as long as the chip is
			 * up.  If a chip reset happens during initial polling,
			 * we have to make sure the timer tick processes the
			 * doorbell indicating the firmware is ready.
			 */
			if (!FUNC30(AF_CHPRST_PENDING, &a->flags))
				FUNC7(a);

			/* Simulate a timer tick. */
			if (nexttick <= deltatime) {

				/* Time for a timer tick */
				nexttick += 100;
				FUNC24(a);
			}

			if (nexttick > deltatime)
				nexttick -= deltatime;

			/* Do any deferred processing */
			if (FUNC16(a))
				FUNC11(a);

		}

		if (FUNC30(AF_FIRST_INIT, &a->flags))
			FUNC5(&a->disable_cnt);

		FUNC6(AF_DISC_POLLED, &a->flags);
		FUNC6(AF_TASKLET_SCHEDULED, &a->flags);
	}


	FUNC23(a);

	/*
	 * For cases where (a) the initialization messages processing may
	 * handle an interrupt for a port event and a discovery is waiting, but
	 * we are not waiting for devices, or (b) the device wait time has been
	 * exhausted but there is still discovery pending, start any leftover
	 * discovery in interrupt driven mode.
	 */
	FUNC9(a);

	/* Enable chip interrupts */
	a->int_mask = ESAS2R_INT_STS_MASK;
	FUNC12(a);
	FUNC13(a);
	rslt = true;

exit:
	/*
	 * Regardless of whether initialization was successful, certain things
	 * need to get done before we exit.
	 */

	if (FUNC30(AF_CHPRST_DETECTED, &a->flags) &&
	    FUNC30(AF_FIRST_INIT, &a->flags)) {
		/*
		 * Reinitialization was performed during the first
		 * initialization.  Only clear the chip reset flag so the
		 * original device polling is not cancelled.
		 */
		if (!rslt)
			FUNC6(AF_CHPRST_PENDING, &a->flags);
	} else {
		/* First initialization or a subsequent re-init is complete. */
		if (!rslt) {
			FUNC6(AF_CHPRST_PENDING, &a->flags);
			FUNC6(AF_DISC_PENDING, &a->flags);
		}


		/* Enable deferred processing after the first initialization. */
		if (FUNC30(AF_FIRST_INIT, &a->flags)) {
			FUNC6(AF_FIRST_INIT, &a->flags);

			if (FUNC4(&a->disable_cnt) == 0)
				FUNC10(a);
		}
	}

	return rslt;
}