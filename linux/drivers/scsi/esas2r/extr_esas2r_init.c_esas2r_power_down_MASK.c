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
struct esas2r_adapter {int /*<<< orphan*/  prev_dev_cnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_VDA_POWER_DOWN ; 
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  AF_OS_RESET ; 
 int /*<<< orphan*/  AF_POWER_DOWN ; 
 int /*<<< orphan*/  AF_POWER_MGT ; 
 int DRBL_MSG_IFC_DOWN ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int FUNC5 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct esas2r_adapter *a)
{
	FUNC12(AF_POWER_MGT, &a->flags);
	FUNC12(AF_POWER_DOWN, &a->flags);

	if (!FUNC13(AF_DEGRADED_MODE, &a->flags)) {
		u32 starttime;
		u32 doorbell;

		/*
		 * We are currently running OK and will be reinitializing later.
		 * increment the disable count to coordinate with
		 * esas2r_init_adapter.  We don't have to do this in degraded
		 * mode since we never enabled interrupts in the first place.
		 */
		FUNC0(a);
		FUNC1(a);

		/* wait for any VDA activity to clear before continuing */
		FUNC8(a, MU_DOORBELL_IN,
					    DRBL_MSG_IFC_DOWN);
		starttime = FUNC9(jiffies);

		while (true) {
			doorbell =
				FUNC5(a, MU_DOORBELL_OUT);
			if (doorbell & DRBL_MSG_IFC_DOWN) {
				FUNC8(a, MU_DOORBELL_OUT,
							    doorbell);
				break;
			}

			FUNC11(FUNC10(100));

			if ((FUNC9(jiffies) - starttime) > 3000) {
				FUNC2(
					"timeout waiting for interface down");
				break;
			}
		}

		/*
		 * For versions of firmware that support it tell them the driver
		 * is powering down.
		 */
		if (FUNC13(AF2_VDA_POWER_DOWN, &a->flags2))
			FUNC3(a);
	}

	/* Suspend I/O processing. */
	FUNC12(AF_OS_RESET, &a->flags);
	FUNC12(AF_DISC_PENDING, &a->flags);
	FUNC12(AF_CHPRST_PENDING, &a->flags);

	FUNC4(a);

	/* Remove devices now that I/O is cleaned up. */
	a->prev_dev_cnt = FUNC6(a);
	FUNC7(a, false);
}