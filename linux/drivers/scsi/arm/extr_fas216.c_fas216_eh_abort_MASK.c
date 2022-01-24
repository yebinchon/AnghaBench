#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_10__ {int aborts; } ;
struct TYPE_11__ {TYPE_3__ stats; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;
typedef  TYPE_4__ FAS216_Info ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  res_failed 130 
#define  res_hw_abort 129 
#define  res_success 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,...) ; 

int FUNC5(struct scsi_cmnd *SCpnt)
{
	FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;
	int result = FAILED;

	FUNC0(info);

	info->stats.aborts += 1;

	FUNC4(KERN_WARNING, SCpnt, "abort command\n");

	FUNC3();
	FUNC1(info);

	switch (FUNC2(info, SCpnt)) {
	/*
	 * We found the command, and cleared it out.  Either
	 * the command is still known to be executing on the
	 * target, or the busylun bit is not set.
	 */
	case res_success:
		FUNC4(KERN_WARNING, SCpnt, "abort %p success\n", SCpnt);
		result = SUCCESS;
		break;

	/*
	 * We need to reconnect to the target and send it an
	 * ABORT or ABORT_TAG message.  We can only do this
	 * if the bus is free.
	 */
	case res_hw_abort:

	/*
	 * We are unable to abort the command for some reason.
	 */
	default:
	case res_failed:
		FUNC4(KERN_WARNING, SCpnt, "abort %p failed\n", SCpnt);
		break;
	}

	return result;
}