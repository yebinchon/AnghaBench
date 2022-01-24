#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* ptr; scalar_t__ buffers_residual; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  this_residual; scalar_t__ Message; int /*<<< orphan*/  Status; } ;
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; TYPE_2__ SCp; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/ * cmnd; } ;
struct TYPE_14__ {int sync_flag; int /*<<< orphan*/  ackwidth; int /*<<< orphan*/  syncreg; int /*<<< orphan*/  limit_entry; } ;
typedef  TYPE_4__ nsp32_target ;
struct TYPE_15__ {int msgin03; scalar_t__ save_datp; struct scsi_cmnd* SCpnt; } ;
typedef  TYPE_5__ nsp32_lunt ;
struct TYPE_16__ {size_t cur_id; size_t cur_lun; TYPE_4__* cur_target; TYPE_4__* target; TYPE_5__* cur_lunt; TYPE_5__** lunt; scalar_t__ msgin_len; scalar_t__ msgout_len; struct scsi_cmnd* CurrentSC; } ;
typedef  TYPE_6__ nsp32_hw_data ;
struct TYPE_13__ {size_t id; size_t lun; TYPE_1__* host; } ;
struct TYPE_11__ {size_t this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ ASYNC_MODE ; 
 int /*<<< orphan*/  CHECK_CONDITION ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 int FALSE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 size_t MAX_LUN ; 
 int /*<<< orphan*/  NSP32_DEBUG_QUEUECOMMAND ; 
 int /*<<< orphan*/  NSP32_DEBUG_TARGETFLAG ; 
 int SDTR_DONE ; 
 int SDTR_INITIATOR ; 
 int SDTR_TARGET ; 
 int TRUE ; 
 scalar_t__ auto_param ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 int FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_4__*,unsigned char*,unsigned char*) ; 
 int FUNC9 (struct scsi_cmnd*) ; 
 size_t FUNC10 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*) ; 
 scalar_t__ trans_mode ; 

__attribute__((used)) static int FUNC16(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
	nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	nsp32_target *target;
	nsp32_lunt   *cur_lunt;
	int ret;

	FUNC2(NSP32_DEBUG_QUEUECOMMAND,
		  "enter. target: 0x%x LUN: 0x%llx cmnd: 0x%x cmndlen: 0x%x "
		  "use_sg: 0x%x reqbuf: 0x%lx reqlen: 0x%x",
		  SCpnt->device->id, SCpnt->device->lun, SCpnt->cmnd[0], SCpnt->cmd_len,
		  FUNC13(SCpnt), FUNC14(SCpnt), FUNC11(SCpnt));

	if (data->CurrentSC != NULL) {
		FUNC3(KERN_ERR, "Currentsc != NULL. Cancel this command request");
		data->CurrentSC = NULL;
		SCpnt->result   = DID_NO_CONNECT << 16;
		done(SCpnt);
		return 0;
	}

	/* check target ID is not same as this initiator ID */
	if (FUNC10(SCpnt) == SCpnt->device->host->this_id) {
		FUNC2(NSP32_DEBUG_QUEUECOMMAND, "target==host???");
		SCpnt->result = DID_BAD_TARGET << 16;
		done(SCpnt);
		return 0;
	}

	/* check target LUN is allowable value */
	if (SCpnt->device->lun >= MAX_LUN) {
		FUNC2(NSP32_DEBUG_QUEUECOMMAND, "no more lun");
		SCpnt->result = DID_BAD_TARGET << 16;
		done(SCpnt);
		return 0;
	}

	FUNC15(SCpnt);

	SCpnt->scsi_done     = done;
	data->CurrentSC      = SCpnt;
	SCpnt->SCp.Status    = CHECK_CONDITION;
	SCpnt->SCp.Message   = 0;
	FUNC12(SCpnt, FUNC11(SCpnt));

	SCpnt->SCp.ptr		    = (char *)FUNC14(SCpnt);
	SCpnt->SCp.this_residual    = FUNC11(SCpnt);
	SCpnt->SCp.buffer	    = NULL;
	SCpnt->SCp.buffers_residual = 0;

	/* initialize data */
	data->msgout_len	= 0;
	data->msgin_len		= 0;
	cur_lunt		= &(data->lunt[SCpnt->device->id][SCpnt->device->lun]);
	cur_lunt->SCpnt		= SCpnt;
	cur_lunt->save_datp	= 0;
	cur_lunt->msgin03	= FALSE;
	data->cur_lunt		= cur_lunt;
	data->cur_id		= SCpnt->device->id;
	data->cur_lun		= SCpnt->device->lun;

	ret = FUNC9(SCpnt);
	if (ret == FALSE) {
		FUNC3(KERN_ERR, "SGT fail");
		SCpnt->result = DID_ERROR << 16;
		FUNC4(SCpnt);
		return 0;
	}

	/* Build IDENTIFY */
	FUNC0(SCpnt);

	/* 
	 * If target is the first time to transfer after the reset
	 * (target don't have SDTR_DONE and SDTR_INITIATOR), sync
	 * message SDTR is needed to do synchronous transfer.
	 */
	target = &data->target[FUNC10(SCpnt)];
	data->cur_target = target;

	if (!(target->sync_flag & (SDTR_DONE | SDTR_INITIATOR | SDTR_TARGET))) {
		unsigned char period, offset;

		if (trans_mode != ASYNC_MODE) {
			FUNC8(data, target, &period, &offset);
			FUNC1(SCpnt, period, offset);
			target->sync_flag |= SDTR_INITIATOR;
		} else {
			FUNC7(data, target);
			target->sync_flag |= SDTR_DONE;
		}

		FUNC2(NSP32_DEBUG_QUEUECOMMAND,
			  "SDTR: entry: %d start_period: 0x%x offset: 0x%x\n",
			  target->limit_entry, period, offset);
	} else if (target->sync_flag & SDTR_INITIATOR) {
		/*
		 * It was negotiating SDTR with target, sending from the
		 * initiator, but there are no chance to remove this flag.
		 * Set async because we don't get proper negotiation.
		 */
		FUNC7(data, target);
		target->sync_flag &= ~SDTR_INITIATOR;
		target->sync_flag |= SDTR_DONE;

		FUNC2(NSP32_DEBUG_QUEUECOMMAND,
			  "SDTR_INITIATOR: fall back to async");
	} else if (target->sync_flag & SDTR_TARGET) {
		/*
		 * It was negotiating SDTR with target, sending from target,
		 * but there are no chance to remove this flag.  Set async
		 * because we don't get proper negotiation.
		 */
		FUNC7(data, target);
		target->sync_flag &= ~SDTR_TARGET;
		target->sync_flag |= SDTR_DONE;

		FUNC2(NSP32_DEBUG_QUEUECOMMAND,
			  "Unknown SDTR from target is reached, fall back to async.");
	}

	FUNC2(NSP32_DEBUG_TARGETFLAG,
		  "target: %d sync_flag: 0x%x syncreg: 0x%x ackwidth: 0x%x",
		  SCpnt->device->id, target->sync_flag, target->syncreg,
		  target->ackwidth);

	/* Selection */
	if (auto_param == 0) {
		ret = FUNC5(SCpnt);
	} else {
		ret = FUNC6(SCpnt);
	}

	if (ret != TRUE) {
		FUNC2(NSP32_DEBUG_QUEUECOMMAND, "selection fail");
		FUNC4(SCpnt);
	}

	return 0;
}