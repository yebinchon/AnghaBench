#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; } ;
struct TYPE_13__ {TYPE_2__* host; scalar_t__ internal_done; TYPE_1__ scsi; } ;
struct TYPE_12__ {scalar_t__ hostdata; } ;
struct TYPE_11__ {TYPE_4__* host; } ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_5__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_STAT ; 
 int STAT_INT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  fas216_internal_done ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SCpnt,
			   void (*done)(struct scsi_cmnd *))
{
	FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;

	FUNC1(info);

	/*
	 * We should only be using this if we don't have an interrupt.
	 * Provide some "incentive" to use the queueing code.
	 */
	FUNC0(info->scsi.irq);

	info->internal_done = 0;
	FUNC3(SCpnt, fas216_internal_done);

	/*
	 * This wastes time, since we can't return until the command is
	 * complete. We can't sleep either since we may get re-entered!
	 * However, we must re-enable interrupts, or else we'll be
	 * waiting forever.
	 */
	FUNC6(info->host->host_lock);

	while (!info->internal_done) {
		/*
		 * If we don't have an IRQ, then we must poll the card for
		 * it's interrupt, and use that to call this driver's
		 * interrupt routine.  That way, we keep the command
		 * progressing.  Maybe we can add some intelligence here
		 * and go to sleep if we know that the device is going
		 * to be some time (eg, disconnected).
		 */
		if (FUNC4(info, REG_STAT) & STAT_INT) {
			FUNC5(info->host->host_lock);
			FUNC2(info);
			FUNC6(info->host->host_lock);
		}
	}

	FUNC5(info->host->host_lock);

	done(SCpnt);

	return 0;
}