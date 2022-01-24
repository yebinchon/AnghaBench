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
struct esas2r_sas_nvram {int dev_wait_time; int dev_wait_count; } ;
struct TYPE_2__ {int /*<<< orphan*/ * interrupt_cx; } ;
struct esas2r_adapter {int disc_wait_time; int disc_wait_cnt; scalar_t__ prev_dev_cnt; int /*<<< orphan*/  flags; TYPE_1__ general_req; int /*<<< orphan*/  disc_start_time; int /*<<< orphan*/  flags2; struct esas2r_sas_nvram* nvram; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_DEV_CNT_OK ; 
 int /*<<< orphan*/  AF2_DEV_SCAN ; 
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_DISC_IN_PROG ; 
 int /*<<< orphan*/  AF_POWER_MGT ; 
 int ESAS2R_MAX_TARGETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct esas2r_adapter *a)
{
	struct esas2r_sas_nvram *nvr = a->nvram;

	FUNC4();

	FUNC0(AF_DISC_IN_PROG, &a->flags);
	FUNC0(AF2_DEV_SCAN, &a->flags2);
	FUNC0(AF2_DEV_CNT_OK, &a->flags2);

	a->disc_start_time = FUNC6(jiffies);
	a->disc_wait_time = nvr->dev_wait_time * 1000;
	a->disc_wait_cnt = nvr->dev_wait_count;

	if (a->disc_wait_cnt > ESAS2R_MAX_TARGETS)
		a->disc_wait_cnt = ESAS2R_MAX_TARGETS;

	/*
	 * If we are doing chip reset or power management processing, always
	 * wait for devices.  use the NVRAM device count if it is greater than
	 * previously discovered devices.
	 */

	FUNC2("starting discovery...");

	a->general_req.interrupt_cx = NULL;

	if (FUNC7(AF_CHPRST_DETECTED, &a->flags) ||
	    FUNC7(AF_POWER_MGT, &a->flags)) {
		if (a->prev_dev_cnt == 0) {
			/* Don't bother waiting if there is nothing to wait
			 * for.
			 */
			a->disc_wait_time = 0;
		} else {
			/*
			 * Set the device wait count to what was previously
			 * found.  We don't care if the user only configured
			 * a time because we know the exact count to wait for.
			 * There is no need to honor the user's wishes to
			 * always wait the full time.
			 */
			a->disc_wait_cnt = a->prev_dev_cnt;

			/*
			 * bump the minimum wait time to 15 seconds since the
			 * default is 3 (system boot or the boot driver usually
			 * buys us more time).
			 */
			if (a->disc_wait_time < 15000)
				a->disc_wait_time = 15000;
		}
	}

	FUNC3("disc wait count: %d", a->disc_wait_cnt);
	FUNC3("disc wait time: %d", a->disc_wait_time);

	if (a->disc_wait_time == 0)
		FUNC1(a);

	FUNC5();
}