#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ushort ;
struct TYPE_4__ {int scsi_reset_wait; } ;
typedef  TYPE_1__ ADV_DVC_VAR ;

/* Variables and functions */
 int ADV_TRUE ; 
 int /*<<< orphan*/  ASC_SCSI_RESET_HOLD_TIME_US ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ IDLE_CMD_SCSI_RESET_END ; 
 scalar_t__ IDLE_CMD_SCSI_RESET_START ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ADV_DVC_VAR *asc_dvc)
{
	int status;

	/*
	 * Send the SCSI Bus Reset idle start idle command which asserts
	 * the SCSI Bus Reset signal.
	 */
	status = FUNC0(asc_dvc, (ushort)IDLE_CMD_SCSI_RESET_START, 0L);
	if (status != ADV_TRUE) {
		return status;
	}

	/*
	 * Delay for the specified SCSI Bus Reset hold time.
	 *
	 * The hold time delay is done on the host because the RISC has no
	 * microsecond accurate timer.
	 */
	FUNC2(ASC_SCSI_RESET_HOLD_TIME_US);

	/*
	 * Send the SCSI Bus Reset end idle command which de-asserts
	 * the SCSI Bus Reset signal and purges any pending requests.
	 */
	status = FUNC0(asc_dvc, (ushort)IDLE_CMD_SCSI_RESET_END, 0L);
	if (status != ADV_TRUE) {
		return status;
	}

	FUNC1(asc_dvc->scsi_reset_wait * 1000);	/* XXX: msleep? */

	return status;
}