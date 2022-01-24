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
typedef  int /*<<< orphan*/  u16 ;
struct ScsiReqBlk {int* msgin_buf; int state; int msg_count; int /*<<< orphan*/ * msgout_buf; int /*<<< orphan*/  cmd; int /*<<< orphan*/  total_xfer_length; } ;
struct DeviceCtlBlk {int /*<<< orphan*/  identify_msg; int /*<<< orphan*/  flag; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; } ;
struct AdapterCtlBlk {scalar_t__ msg_len; struct DeviceCtlBlk* active_dcb; } ;

/* Variables and functions */
#define  ABORT 138 
 int /*<<< orphan*/  ABORT_DEV_ ; 
#define  COMMAND_COMPLETE 137 
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DC395x_ENABLE_MSGOUT ; 
 int FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DISCONNECT 136 
 int DO_CLRATN ; 
 int DO_DATALATCH ; 
#define  EXTENDED_MESSAGE 135 
 int EXTENDED_SDTR ; 
 int EXTENDED_WDTR ; 
#define  HEAD_OF_QUEUE_TAG 134 
 int IDENTIFY_BASE ; 
#define  MESSAGE_REJECT 133 
#define  MSG_IGNOREWIDE 132 
#define  ORDERED_QUEUE_TAG 131 
 int /*<<< orphan*/  PH_BUS_FREE ; 
#define  RESTORE_POINTERS 130 
#define  SAVE_POINTERS 129 
 int /*<<< orphan*/  SCMD_MSGACCEPT ; 
#define  SIMPLE_QUEUE_TAG 128 
 int SRB_DISCONNECT ; 
 int SRB_DO_SYNC_NEGO ; 
 int SRB_DO_WIDE_NEGO ; 
 int SRB_MSGIN ; 
 int SRB_MSGOUT ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_COMMAND ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_FIFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 scalar_t__ FUNC5 (int*,scalar_t__) ; 
 struct ScsiReqBlk* FUNC6 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC8 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC9 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC10 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC11 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 

__attribute__((used)) static void FUNC12(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
		u16 *pscsi_status)
{
	struct DeviceCtlBlk *dcb = acb->active_dcb;
	FUNC3(DBG_0, "msgin_phase0: (0x%p)\n", srb->cmd);

	srb->msgin_buf[acb->msg_len++] = FUNC0(acb, TRM_S1040_SCSI_FIFO);
	if (FUNC5(srb->msgin_buf, acb->msg_len)) {
		/* Now eval the msg */
		switch (srb->msgin_buf[0]) {
		case DISCONNECT:
			srb->state = SRB_DISCONNECT;
			break;

		case SIMPLE_QUEUE_TAG:
		case HEAD_OF_QUEUE_TAG:
		case ORDERED_QUEUE_TAG:
			srb =
			    FUNC6(acb, dcb,
					      srb->msgin_buf[1]);
			break;

		case MESSAGE_REJECT:
			FUNC1(acb, TRM_S1040_SCSI_CONTROL,
				       DO_CLRATN | DO_DATALATCH);
			/* A sync nego message was rejected ! */
			if (srb->state & SRB_DO_SYNC_NEGO) {
				FUNC8(acb, srb);
				break;
			}
			/* A wide nego message was rejected ! */
			if (srb->state & SRB_DO_WIDE_NEGO) {
				FUNC9(acb, srb);
				break;
			}
			FUNC4(acb, srb);
			/*srb->state |= SRB_ABORT_SENT */
			break;

		case EXTENDED_MESSAGE:
			/* SDTR */
			if (srb->msgin_buf[1] == 3
			    && srb->msgin_buf[2] == EXTENDED_SDTR) {
				FUNC10(acb, srb);
				break;
			}
			/* WDTR */
			if (srb->msgin_buf[1] == 2
			    && srb->msgin_buf[2] == EXTENDED_WDTR
			    && srb->msgin_buf[3] <= 2) { /* sanity check ... */
				FUNC11(acb, srb);
				break;
			}
			FUNC7(acb, srb);
			break;

		case MSG_IGNOREWIDE:
			/* Discard  wide residual */
			FUNC3(DBG_0, "msgin_phase0: Ignore Wide Residual!\n");
			break;

		case COMMAND_COMPLETE:
			/* nothing has to be done */
			break;

		case SAVE_POINTERS:
			/*
			 * SAVE POINTER may be ignored as we have the struct
			 * ScsiReqBlk* associated with the scsi command.
			 */
			FUNC3(DBG_0, "msgin_phase0: (0x%p) "
				"SAVE POINTER rem=%i Ignore\n",
				srb->cmd, srb->total_xfer_length);
			break;

		case RESTORE_POINTERS:
			FUNC3(DBG_0, "msgin_phase0: RESTORE POINTER. Ignore\n");
			break;

		case ABORT:
			FUNC3(DBG_0, "msgin_phase0: (0x%p) "
				"<%02i-%i> ABORT msg\n",
				srb->cmd, dcb->target_id,
				dcb->target_lun);
			dcb->flag |= ABORT_DEV_;
			FUNC4(acb, srb);
			break;

		default:
			/* reject unknown messages */
			if (srb->msgin_buf[0] & IDENTIFY_BASE) {
				FUNC3(DBG_0, "msgin_phase0: Identify msg\n");
				srb->msg_count = 1;
				srb->msgout_buf[0] = dcb->identify_msg;
				DC395x_ENABLE_MSGOUT;
				srb->state |= SRB_MSGOUT;
				/*break; */
			}
			FUNC7(acb, srb);
		}

		/* Clear counter and MsgIn state */
		srb->state &= ~SRB_MSGIN;
		acb->msg_len = 0;
	}
	*pscsi_status = PH_BUS_FREE;
	FUNC1(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);	/* it's important ... you know! */
	FUNC2(acb, TRM_S1040_SCSI_COMMAND, SCMD_MSGACCEPT);
}