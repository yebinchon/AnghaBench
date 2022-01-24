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
struct scsi_cmnd {int* cmnd; int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int /*<<< orphan*/  main_task; int /*<<< orphan*/  work_q; int /*<<< orphan*/  lock; int /*<<< orphan*/  unissued; } ;
struct NCR5380_cmd {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  NDEBUG_QUEUES ; 
 int REQUEST_SENSE ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
#define  WRITE_10 129 
#define  WRITE_6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct NCR5380_cmd* FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 struct NCR5380_hostdata* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC11(struct Scsi_Host *instance,
                                 struct scsi_cmnd *cmd)
{
	struct NCR5380_hostdata *hostdata = FUNC7(instance);
	struct NCR5380_cmd *ncmd = FUNC5(cmd);
	unsigned long flags;

#if (NDEBUG & NDEBUG_NO_WRITE)
	switch (cmd->cmnd[0]) {
	case WRITE_6:
	case WRITE_10:
		shost_printk(KERN_DEBUG, instance, "WRITE attempted with NDEBUG_NO_WRITE set\n");
		cmd->result = (DID_ERROR << 16);
		cmd->scsi_done(cmd);
		return 0;
	}
#endif /* (NDEBUG & NDEBUG_NO_WRITE) */

	cmd->result = 0;

	if (!FUNC0(instance))
		return SCSI_MLQUEUE_HOST_BUSY;

	FUNC8(&hostdata->lock, flags);

	/*
	 * Insert the cmd into the issue queue. Note that REQUEST SENSE
	 * commands are added to the head of the queue since any command will
	 * clear the contingent allegiance condition that exists and the
	 * sense data is only guaranteed to be valid while the condition exists.
	 */

	if (cmd->cmnd[0] == REQUEST_SENSE)
		FUNC2(&ncmd->list, &hostdata->unissued);
	else
		FUNC3(&ncmd->list, &hostdata->unissued);

	FUNC9(&hostdata->lock, flags);

	FUNC1(NDEBUG_QUEUES, instance, "command %p added to %s of queue\n",
	         cmd, (cmd->cmnd[0] == REQUEST_SENSE) ? "head" : "tail");

	/* Kick off command processing */
	FUNC4(hostdata->work_q, &hostdata->main_task);
	return 0;
}