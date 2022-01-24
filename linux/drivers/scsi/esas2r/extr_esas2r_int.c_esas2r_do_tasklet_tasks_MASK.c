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
struct esas2r_adapter {int /*<<< orphan*/  disable_cnt; int /*<<< orphan*/  flags; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BUSRST_DETECTED ; 
 int /*<<< orphan*/  AF_BUSRST_NEEDED ; 
 int /*<<< orphan*/  AF_BUSRST_PENDING ; 
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_CHPRST_NEEDED ; 
 int /*<<< orphan*/  AF_FLASHING ; 
 int /*<<< orphan*/  AF_PORT_CHANGE ; 
 int /*<<< orphan*/  DRBL_RESET_BUS ; 
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct esas2r_adapter *a)
{

	if (FUNC13(AF_CHPRST_NEEDED, &a->flags) ||
	    FUNC13(AF_CHPRST_DETECTED, &a->flags)) {
		if (FUNC13(AF_CHPRST_NEEDED, &a->flags))
			FUNC2(a);

		FUNC4(a);
	}

	if (FUNC13(AF_BUSRST_NEEDED, &a->flags)) {
		FUNC5("hard resetting bus");

		FUNC1(AF_BUSRST_NEEDED, &a->flags);

		if (FUNC13(AF_FLASHING, &a->flags))
			FUNC12(AF_BUSRST_DETECTED, &a->flags);
		else
			FUNC10(a, MU_DOORBELL_IN,
						    DRBL_RESET_BUS);
	}

	if (FUNC13(AF_BUSRST_DETECTED, &a->flags)) {
		FUNC8(a);

		FUNC7(ESAS2R_LOG_WARN,
			       &(a->host->shost_gendev),
			       "scsi_report_bus_reset() called");

		FUNC11(a->host, 0);

		FUNC1(AF_BUSRST_DETECTED, &a->flags);
		FUNC1(AF_BUSRST_PENDING, &a->flags);

		FUNC6(ESAS2R_LOG_WARN, "Bus reset complete");
	}

	if (FUNC13(AF_PORT_CHANGE, &a->flags)) {
		FUNC1(AF_PORT_CHANGE, &a->flags);

		FUNC9(a);
	}

	if (FUNC0(&a->disable_cnt) == 0)
		FUNC3(a);
}