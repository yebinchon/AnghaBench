#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct scsi_cmnd {int result; TYPE_2__* device; } ;
struct ScsiReqBlk {int /*<<< orphan*/  list; } ;
struct DeviceCtlBlk {int /*<<< orphan*/  srb_going_list; int /*<<< orphan*/  srb_waiting_list; } ;
struct AdapterCtlBlk {int /*<<< orphan*/  srb_free_list; } ;
struct TYPE_4__ {scalar_t__ lun; int /*<<< orphan*/  id; TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct ScsiReqBlk* FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 struct DeviceCtlBlk* FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *cmd)
{
	/*
	 * Look into our command queues: If it has not been sent already,
	 * we remove it and return success. Otherwise fail.
	 */
	struct AdapterCtlBlk *acb =
	    (struct AdapterCtlBlk *)cmd->device->host->hostdata;
	struct DeviceCtlBlk *dcb;
	struct ScsiReqBlk *srb;
	FUNC0(KERN_INFO, "eh_abort: (0x%p) target=<%02i-%i> cmd=%p\n",
		cmd, cmd->device->id, (u8)cmd->device->lun, cmd);

	dcb = FUNC2(acb, cmd->device->id, cmd->device->lun);
	if (!dcb) {
		FUNC0(KERN_DEBUG, "eh_abort: No such device\n");
		return FAILED;
	}

	srb = FUNC1(cmd, &dcb->srb_waiting_list);
	if (srb) {
		FUNC5(&srb->list);
		FUNC7(acb, srb);
		FUNC6(acb, srb);
		FUNC3(dcb, srb);
		FUNC4(&srb->list, &acb->srb_free_list);
		FUNC0(KERN_DEBUG, "eh_abort: Command was waiting\n");
		cmd->result = DID_ABORT << 16;
		return SUCCESS;
	}
	srb = FUNC1(cmd, &dcb->srb_going_list);
	if (srb) {
		FUNC0(KERN_DEBUG, "eh_abort: Command in progress\n");
		/* XXX: Should abort the command here */
	} else {
		FUNC0(KERN_DEBUG, "eh_abort: Command not found\n");
	}
	return FAILED;
}