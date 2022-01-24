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
struct esas2r_adapter {int /*<<< orphan*/  flags2; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_COREDUMP_AVAIL ; 
 int /*<<< orphan*/  AF_BUSRST_DETECTED ; 
 int /*<<< orphan*/  AF_HEARTBEAT ; 
 int DRBL_FORCE_INT ; 
 int DRBL_FW_RESET ; 
 int DRBL_PANIC_REASON_MASK ; 
 int DRBL_RESET_BUS ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct esas2r_adapter *a, u32 doorbell)
{
	if (!(doorbell & DRBL_FORCE_INT)) {
		FUNC5();
		FUNC4("doorbell: %x", doorbell);
	}

	/* First clear the doorbell bits */
	FUNC7(a, MU_DOORBELL_OUT, doorbell);

	if (doorbell & DRBL_RESET_BUS)
		FUNC8(AF_BUSRST_DETECTED, &a->flags);

	if (doorbell & DRBL_FORCE_INT)
		FUNC0(AF_HEARTBEAT, &a->flags);

	if (doorbell & DRBL_PANIC_REASON_MASK) {
		FUNC1("*** Firmware Panic ***");
		FUNC3(ESAS2R_LOG_CRIT, "The firmware has panicked");
	}

	if (doorbell & DRBL_FW_RESET) {
		FUNC8(AF2_COREDUMP_AVAIL, &a->flags2);
		FUNC2(a);
	}

	if (!(doorbell & DRBL_FORCE_INT))
		FUNC6();
}