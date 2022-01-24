#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; TYPE_2__* device; } ;
struct TYPE_9__ {int /*<<< orphan*/ * state; struct scsi_cmnd** srb; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;
typedef  TYPE_3__ TW_Device_Extension ;

/* Variables and functions */
 int DID_ERROR ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int /*<<< orphan*/  TW_S_COMPLETED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
	int request_id, retval;
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;

	/* If we are resetting due to timed out ioctl, report as busy */
	if (FUNC0(TW_IN_RESET, &tw_dev->flags)) {
		retval = SCSI_MLQUEUE_HOST_BUSY;
		goto out;
	}

	/* Save done function into scsi_cmnd struct */
	SCpnt->scsi_done = done;
		
	/* Get a free request id */
	FUNC2(tw_dev, &request_id);

	/* Save the scsi command for use by the ISR */
	tw_dev->srb[request_id] = SCpnt;

	retval = FUNC3(tw_dev, request_id, NULL, 0, NULL);
	if (retval) {
		tw_dev->state[request_id] = TW_S_COMPLETED;
		FUNC1(tw_dev, request_id);
		SCpnt->result = (DID_ERROR << 16);
		done(SCpnt);
		retval = 0;
	}
out:
	return retval;
}