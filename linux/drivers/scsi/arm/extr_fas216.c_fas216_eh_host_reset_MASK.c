#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_12__ {TYPE_3__* host; } ;
struct TYPE_11__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_10__ {TYPE_1__* host; } ;
struct TYPE_9__ {scalar_t__ hostdata; } ;
typedef  TYPE_4__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_NOP ; 
 int /*<<< orphan*/  CMD_RESETCHIP ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct scsi_cmnd *SCpnt)
{
	FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;

	FUNC5(info->host->host_lock);

	FUNC0(info);

	FUNC3(info, LOG_ERROR, "resetting host");

	/*
	 * Reset the SCSI chip.
	 */
	FUNC1(info, CMD_RESETCHIP);

	/*
	 * Ugly ugly ugly!
	 * We need to release the host_lock and enable
	 * IRQs if we sleep, but we must relock and disable
	 * IRQs after the sleep.
	 */
	FUNC6(info->host->host_lock);
	FUNC4(50 * 1000/100);
	FUNC5(info->host->host_lock);

	/*
	 * Release the SCSI reset.
	 */
	FUNC1(info, CMD_NOP);

	FUNC2(info);

	FUNC6(info->host->host_lock);
	return SUCCESS;
}