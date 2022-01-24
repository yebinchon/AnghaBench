#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_9__ {scalar_t__* state; int* free_queue; TYPE_4__* host; int /*<<< orphan*/  chrdev_request_id; int /*<<< orphan*/  flags; scalar_t__ posted_request_count; void* free_tail; void* free_head; struct scsi_cmnd** srb; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int DID_RESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int /*<<< orphan*/  TW_IOCTL_CHRDEV_FREE ; 
 int TW_Q_LENGTH ; 
 void* TW_Q_START ; 
 scalar_t__ TW_S_COMPLETED ; 
 scalar_t__ TW_S_FINISHED ; 
 scalar_t__ TW_S_INITIAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC12(TW_Device_Extension *tw_dev, int ioctl_reset)
{
	int i = 0, retval = 1;
	unsigned long flags = 0;

	/* Block SCSI requests while we are resetting */
	if (ioctl_reset)
		FUNC4(tw_dev->host);

	FUNC7(TW_IN_RESET, &tw_dev->flags);
	FUNC1(tw_dev);
	FUNC0(tw_dev);

	FUNC8(tw_dev->host->host_lock, flags);

	/* Abort all requests that are in progress */
	for (i = 0; i < TW_Q_LENGTH; i++) {
		if ((tw_dev->state[i] != TW_S_FINISHED) &&
		    (tw_dev->state[i] != TW_S_INITIAL) &&
		    (tw_dev->state[i] != TW_S_COMPLETED)) {
			struct scsi_cmnd *cmd = tw_dev->srb[i];

			if (cmd) {
				cmd->result = (DID_RESET << 16);
				FUNC5(cmd);
				cmd->scsi_done(cmd);
			}
		}
	}

	/* Reset queues and counts */
	for (i = 0; i < TW_Q_LENGTH; i++) {
		tw_dev->free_queue[i] = i;
		tw_dev->state[i] = TW_S_INITIAL;
	}
	tw_dev->free_head = TW_Q_START;
	tw_dev->free_tail = TW_Q_START;
	tw_dev->posted_request_count = 0;

	FUNC9(tw_dev->host->host_lock, flags);

	if (FUNC11(tw_dev, 1))
		goto out;

	FUNC2(tw_dev);

	FUNC3(TW_IN_RESET, &tw_dev->flags);
	tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;

	retval = 0;
out:
	if (ioctl_reset)
		FUNC6(tw_dev->host);
	return retval;
}