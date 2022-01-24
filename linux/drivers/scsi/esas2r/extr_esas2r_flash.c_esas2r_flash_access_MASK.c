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
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int DRBL_FLASH_DONE ; 
 int DRBL_FLASH_REQ ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int MU_INTSTAT_DRBL ; 
 int /*<<< orphan*/  MU_INT_STATUS_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(struct esas2r_adapter *a, u32 function)
{
	u32 starttime;
	u32 timeout;
	u32 intstat;
	u32 doorbell;

	/* Disable chip interrupts awhile */
	if (function == DRBL_FLASH_REQ)
		FUNC0(a);

	/* Issue the request to the firmware */
	FUNC4(a, MU_DOORBELL_IN, function);

	/* Now wait for the firmware to process it */
	starttime = FUNC5(jiffies);

	if (FUNC8(AF_CHPRST_PENDING, &a->flags) ||
	    FUNC8(AF_DISC_PENDING, &a->flags))
		timeout = 40000;
	else
		timeout = 5000;

	while (true) {
		intstat = FUNC3(a, MU_INT_STATUS_OUT);

		if (intstat & MU_INTSTAT_DRBL) {
			/* Got a doorbell interrupt.  Check for the function */
			doorbell =
				FUNC3(a, MU_DOORBELL_OUT);
			FUNC4(a, MU_DOORBELL_OUT,
						    doorbell);
			if (doorbell & function)
				break;
		}

		FUNC7(FUNC6(100));

		if ((FUNC5(jiffies) - starttime) > timeout) {
			/*
			 * Iimeout.  If we were requesting flash access,
			 * indicate we are done so the firmware knows we gave
			 * up.  If this was a REQ, we also need to re-enable
			 * chip interrupts.
			 */
			if (function == DRBL_FLASH_REQ) {
				FUNC2("flash access timeout");
				FUNC4(a, MU_DOORBELL_IN,
							    DRBL_FLASH_DONE);
				FUNC1(a);
			} else {
				FUNC2("flash release timeout");
			}

			return false;
		}
	}

	/* if we're done, re-enable chip interrupts */
	if (function == DRBL_FLASH_DONE)
		FUNC1(a);

	return true;
}