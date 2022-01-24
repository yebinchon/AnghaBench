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
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_10__ {scalar_t__ working_srl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * state; struct scsi_cmnd** srb; TYPE_3__ tw_compat_info; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ lun; TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;
typedef  TYPE_4__ TW_Device_Extension ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
#define  SCSI_MLQUEUE_HOST_BUSY 128 
 scalar_t__ TW_FW_SRL_LUNS_SUPPORTED ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int /*<<< orphan*/  TW_S_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int*) ; 
 int FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
	int request_id, retval;
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;

	/* If we are resetting due to timed out ioctl, report as busy */
	if (FUNC1(TW_IN_RESET, &tw_dev->flags)) {
		retval = SCSI_MLQUEUE_HOST_BUSY;
		goto out;
	}

	/* Check if this FW supports luns */
	if ((SCpnt->device->lun != 0) && (tw_dev->tw_compat_info.working_srl < TW_FW_SRL_LUNS_SUPPORTED)) {
		SCpnt->result = (DID_BAD_TARGET << 16);
		done(SCpnt);
		retval = 0;
		goto out;
	}

	/* Save done function into scsi_cmnd struct */
	SCpnt->scsi_done = done;
		
	/* Get a free request id */
	FUNC4(tw_dev, &request_id);

	/* Save the scsi command for use by the ISR */
	tw_dev->srb[request_id] = SCpnt;

	retval = FUNC5(tw_dev, request_id, NULL, 0, NULL);
	switch (retval) {
	case SCSI_MLQUEUE_HOST_BUSY:
		if (FUNC2(SCpnt))
			FUNC0(SCpnt);
		FUNC3(tw_dev, request_id);
		break;
	case 1:
		SCpnt->result = (DID_ERROR << 16);
		if (FUNC2(SCpnt))
			FUNC0(SCpnt);
		done(SCpnt);
		tw_dev->state[request_id] = TW_S_COMPLETED;
		FUNC3(tw_dev, request_id);
		retval = 0;
	}
out:
	return retval;
}