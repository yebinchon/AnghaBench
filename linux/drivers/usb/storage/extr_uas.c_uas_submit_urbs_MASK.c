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
struct urb {int dummy; } ;
struct uas_dev_info {int /*<<< orphan*/  cmd_urbs; int /*<<< orphan*/  data_urbs; int /*<<< orphan*/  lock; } ;
struct uas_cmd_info {int state; int /*<<< orphan*/ * cmd_urb; int /*<<< orphan*/ * data_out_urb; int /*<<< orphan*/ * data_in_urb; } ;
struct scsi_cmnd {int /*<<< orphan*/  SCp; } ;

/* Variables and functions */
 int ALLOC_CMD_URB ; 
 int ALLOC_DATA_IN_URB ; 
 int ALLOC_DATA_OUT_URB ; 
 int COMMAND_INFLIGHT ; 
 int DATA_IN_URB_INFLIGHT ; 
 int DATA_OUT_URB_INFLIGHT ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCSI_MLQUEUE_DEVICE_BUSY ; 
 int SUBMIT_CMD_URB ; 
 int SUBMIT_DATA_IN_URB ; 
 int SUBMIT_DATA_OUT_URB ; 
 int SUBMIT_STATUS_URB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct uas_dev_info*,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 void* FUNC2 (struct uas_dev_info*,int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,char*,int) ; 
 struct urb* FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *cmnd,
			   struct uas_dev_info *devinfo)
{
	struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
	struct urb *urb;
	int err;

	FUNC0(&devinfo->lock);
	if (cmdinfo->state & SUBMIT_STATUS_URB) {
		urb = FUNC4(cmnd, GFP_ATOMIC);
		if (!urb)
			return SCSI_MLQUEUE_DEVICE_BUSY;
		cmdinfo->state &= ~SUBMIT_STATUS_URB;
	}

	if (cmdinfo->state & ALLOC_DATA_IN_URB) {
		cmdinfo->data_in_urb = FUNC2(devinfo, GFP_ATOMIC,
							cmnd, DMA_FROM_DEVICE);
		if (!cmdinfo->data_in_urb)
			return SCSI_MLQUEUE_DEVICE_BUSY;
		cmdinfo->state &= ~ALLOC_DATA_IN_URB;
	}

	if (cmdinfo->state & SUBMIT_DATA_IN_URB) {
		FUNC5(cmdinfo->data_in_urb, &devinfo->data_urbs);
		err = FUNC6(cmdinfo->data_in_urb, GFP_ATOMIC);
		if (err) {
			FUNC7(cmdinfo->data_in_urb);
			FUNC3(cmnd, "data in submit err", err);
			return SCSI_MLQUEUE_DEVICE_BUSY;
		}
		cmdinfo->state &= ~SUBMIT_DATA_IN_URB;
		cmdinfo->state |= DATA_IN_URB_INFLIGHT;
	}

	if (cmdinfo->state & ALLOC_DATA_OUT_URB) {
		cmdinfo->data_out_urb = FUNC2(devinfo, GFP_ATOMIC,
							cmnd, DMA_TO_DEVICE);
		if (!cmdinfo->data_out_urb)
			return SCSI_MLQUEUE_DEVICE_BUSY;
		cmdinfo->state &= ~ALLOC_DATA_OUT_URB;
	}

	if (cmdinfo->state & SUBMIT_DATA_OUT_URB) {
		FUNC5(cmdinfo->data_out_urb, &devinfo->data_urbs);
		err = FUNC6(cmdinfo->data_out_urb, GFP_ATOMIC);
		if (err) {
			FUNC7(cmdinfo->data_out_urb);
			FUNC3(cmnd, "data out submit err", err);
			return SCSI_MLQUEUE_DEVICE_BUSY;
		}
		cmdinfo->state &= ~SUBMIT_DATA_OUT_URB;
		cmdinfo->state |= DATA_OUT_URB_INFLIGHT;
	}

	if (cmdinfo->state & ALLOC_CMD_URB) {
		cmdinfo->cmd_urb = FUNC1(devinfo, GFP_ATOMIC, cmnd);
		if (!cmdinfo->cmd_urb)
			return SCSI_MLQUEUE_DEVICE_BUSY;
		cmdinfo->state &= ~ALLOC_CMD_URB;
	}

	if (cmdinfo->state & SUBMIT_CMD_URB) {
		FUNC5(cmdinfo->cmd_urb, &devinfo->cmd_urbs);
		err = FUNC6(cmdinfo->cmd_urb, GFP_ATOMIC);
		if (err) {
			FUNC7(cmdinfo->cmd_urb);
			FUNC3(cmnd, "cmd submit err", err);
			return SCSI_MLQUEUE_DEVICE_BUSY;
		}
		cmdinfo->cmd_urb = NULL;
		cmdinfo->state &= ~SUBMIT_CMD_URB;
		cmdinfo->state |= COMMAND_INFLIGHT;
	}

	return 0;
}