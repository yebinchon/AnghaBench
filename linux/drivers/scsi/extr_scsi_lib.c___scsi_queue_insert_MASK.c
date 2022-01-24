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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  request; scalar_t__ result; struct scsi_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int) ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *cmd, int reason, bool unbusy)
{
	struct scsi_device *device = cmd->device;

	FUNC0(1, FUNC2(KERN_INFO, cmd,
		"Inserting command %p into mlqueue\n", cmd));

	FUNC4(cmd, reason);

	/*
	 * Decrement the counters, since these commands are no longer
	 * active on the host/device.
	 */
	if (unbusy)
		FUNC3(device);

	/*
	 * Requeue this command.  It will go before all other commands
	 * that are already in the queue. Schedule requeue work under
	 * lock such that the kblockd_schedule_work() call happens
	 * before blk_cleanup_queue() finishes.
	 */
	cmd->result = 0;

	FUNC1(cmd->request, true);
}