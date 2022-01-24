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
typedef  int u8 ;
struct TYPE_3__ {scalar_t__ this_residual; scalar_t__ buffers_residual; } ;
struct scsi_cmnd {int sc_data_direction; int* sense_buffer; scalar_t__* cmnd; int result; scalar_t__ underflow; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; TYPE_1__ SCp; } ;
struct scatterlist {int dummy; } ;
struct ScsiReqBlk {int target_status; int flag; int adapter_status; scalar_t__ total_xfer_length; int status; int /*<<< orphan*/  list; int /*<<< orphan*/  end_message; int /*<<< orphan*/  sg_count; int /*<<< orphan*/  sg_index; struct scsi_cmnd* cmd; } ;
struct ScsiInqData {int Vers; int /*<<< orphan*/  Flags; } ;
struct DeviceCtlBlk {int max_command; int init_tcq_flag; int /*<<< orphan*/  inquiry7; int /*<<< orphan*/  srb_waiting_list; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  srb_going_list; } ;
struct AdapterCtlBlk {int /*<<< orphan*/  srb_free_list; struct ScsiReqBlk* tmp_srb; int /*<<< orphan*/  scan_devices; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {scalar_t__ lun; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int AUTO_REQSENSE ; 
 int CHECK_CONDITION ; 
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DBG_1 ; 
 int /*<<< orphan*/  DBG_KG ; 
 int /*<<< orphan*/  DBG_SG ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 int DID_OK ; 
 int DID_PARITY ; 
 int /*<<< orphan*/  DRIVER_SENSE ; 
#define  HARDWARE_ERROR 132 
 int HZ ; 
 int H_OVER_UNDER_RUN ; 
 int H_SEL_TIMEOUT ; 
#define  ILLEGAL_REQUEST 131 
 scalar_t__ INQUIRY ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
#define  MEDIUM_ERROR 130 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
#define  NOT_READY 129 
 int PARITY_ERROR ; 
 int PCI_DMA_NONE ; 
 int QUEUE_FULL ; 
 int RES_DID ; 
 int SCSI_STAT_SEL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
#define  UNIT_ATTENTION 128 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiInqData*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC15 (struct AdapterCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC17 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int FUNC18 (struct scsi_cmnd*) ; 
 unsigned char* FUNC19 (struct scatterlist*,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_cmnd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC23 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC24 (struct scsi_cmnd*) ; 
 int FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC27 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC28 (struct AdapterCtlBlk*,int) ; 

__attribute__((used)) static void FUNC29(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
		struct ScsiReqBlk *srb)
{
	u8 tempcnt, status;
	struct scsi_cmnd *cmd = srb->cmd;
	enum dma_data_direction dir = cmd->sc_data_direction;
	int ckc_only = 1;

	FUNC6(DBG_1, "srb_done: (0x%p) <%02i-%i>\n", srb->cmd,
		srb->cmd->device->id, (u8)srb->cmd->device->lun);
	FUNC6(DBG_SG, "srb_done: srb=%p sg=%i(%i/%i) buf=%p\n",
		   srb, FUNC22(cmd), srb->sg_index, srb->sg_count,
		   FUNC24(cmd));
	status = srb->target_status;
	if (srb->flag & AUTO_REQSENSE) {
		FUNC6(DBG_0, "srb_done: AUTO_REQSENSE1\n");
		FUNC15(acb, srb);
		/*
		 ** target status..........................
		 */
		srb->flag &= ~AUTO_REQSENSE;
		srb->adapter_status = 0;
		srb->target_status = CHECK_CONDITION << 1;
		if (FUNC5(DBG_1)) {
			switch (cmd->sense_buffer[2] & 0x0f) {
			case NOT_READY:
				FUNC7(KERN_DEBUG,
				     "ReqSense: NOT_READY cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
				     cmd->cmnd[0], dcb->target_id,
				     dcb->target_lun, status, acb->scan_devices);
				break;
			case UNIT_ATTENTION:
				FUNC7(KERN_DEBUG,
				     "ReqSense: UNIT_ATTENTION cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
				     cmd->cmnd[0], dcb->target_id,
				     dcb->target_lun, status, acb->scan_devices);
				break;
			case ILLEGAL_REQUEST:
				FUNC7(KERN_DEBUG,
				     "ReqSense: ILLEGAL_REQUEST cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
				     cmd->cmnd[0], dcb->target_id,
				     dcb->target_lun, status, acb->scan_devices);
				break;
			case MEDIUM_ERROR:
				FUNC7(KERN_DEBUG,
				     "ReqSense: MEDIUM_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
				     cmd->cmnd[0], dcb->target_id,
				     dcb->target_lun, status, acb->scan_devices);
				break;
			case HARDWARE_ERROR:
				FUNC7(KERN_DEBUG,
				     "ReqSense: HARDWARE_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i ",
				     cmd->cmnd[0], dcb->target_id,
				     dcb->target_lun, status, acb->scan_devices);
				break;
			}
			if (cmd->sense_buffer[7] >= 6)
				FUNC16("sense=0x%02x ASC=0x%02x ASCQ=0x%02x "
					"(0x%08x 0x%08x)\n",
					cmd->sense_buffer[2], cmd->sense_buffer[12],
					cmd->sense_buffer[13],
					*((unsigned int *)(cmd->sense_buffer + 3)),
					*((unsigned int *)(cmd->sense_buffer + 8)));
			else
				FUNC16("sense=0x%02x No ASC/ASCQ (0x%08x)\n",
					cmd->sense_buffer[2],
					*((unsigned int *)(cmd->sense_buffer + 3)));
		}

		if (status == (CHECK_CONDITION << 1)) {
			cmd->result = DID_BAD_TARGET << 16;
			goto ckc_e;
		}
		FUNC6(DBG_0, "srb_done: AUTO_REQSENSE2\n");

		if (srb->total_xfer_length
		    && srb->total_xfer_length >= cmd->underflow)
			cmd->result =
			    FUNC0(DRIVER_SENSE, DID_OK,
				       srb->end_message, CHECK_CONDITION);
		/*SET_RES_DID(cmd->result,DID_OK) */
		else
			cmd->result =
			    FUNC0(DRIVER_SENSE, DID_OK,
				       srb->end_message, CHECK_CONDITION);

		goto ckc_e;
	}

/*************************************************************/
	if (status) {
		/*
		 * target status..........................
		 */
		if (FUNC25(status) == CHECK_CONDITION) {
			FUNC17(acb, dcb, srb);
			return;
		} else if (FUNC25(status) == QUEUE_FULL) {
			tempcnt = (u8)FUNC11(&dcb->srb_going_list);
			FUNC7(KERN_INFO, "QUEUE_FULL for dev <%02i-%i> with %i cmnds\n",
			     dcb->target_id, dcb->target_lun, tempcnt);
			if (tempcnt > 1)
				tempcnt--;
			dcb->max_command = tempcnt;
			FUNC8(dcb, srb);
			FUNC9(&srb->list, &dcb->srb_waiting_list);
			FUNC28(acb, HZ / 20);
			srb->adapter_status = 0;
			srb->target_status = 0;
			return;
		} else if (status == SCSI_STAT_SEL_TIMEOUT) {
			srb->adapter_status = H_SEL_TIMEOUT;
			srb->target_status = 0;
			cmd->result = DID_NO_CONNECT << 16;
		} else {
			srb->adapter_status = 0;
			FUNC1(cmd->result, DID_ERROR);
			FUNC2(cmd->result, srb->end_message);
			FUNC3(cmd->result, status);

		}
	} else {
		/*
		 ** process initiator status..........................
		 */
		status = srb->adapter_status;
		if (status & H_OVER_UNDER_RUN) {
			srb->target_status = 0;
			FUNC1(cmd->result, DID_OK);
			FUNC2(cmd->result, srb->end_message);
		} else if (srb->status & PARITY_ERROR) {
			FUNC1(cmd->result, DID_PARITY);
			FUNC2(cmd->result, srb->end_message);
		} else {	/* No error */

			srb->adapter_status = 0;
			srb->target_status = 0;
			FUNC1(cmd->result, DID_OK);
		}
	}

	ckc_only = 0;
/* Check Error Conditions */
      ckc_e:

	FUNC14(acb, srb);

	if (cmd->cmnd[0] == INQUIRY) {
		unsigned char *base = NULL;
		struct ScsiInqData *ptr;
		unsigned long flags = 0;
		struct scatterlist* sg = FUNC23(cmd);
		size_t offset = 0, len = sizeof(struct ScsiInqData);

		FUNC13(flags);
		base = FUNC19(sg, FUNC22(cmd), &offset, &len);
		ptr = (struct ScsiInqData *)(base + offset);

		if (!ckc_only && (cmd->result & RES_DID) == 0
		    && cmd->cmnd[2] == 0 && FUNC18(cmd) >= 8
		    && dir != PCI_DMA_NONE && ptr && (ptr->Vers & 0x07) >= 2)
			dcb->inquiry7 = ptr->Flags;

	/*if( srb->cmd->cmnd[0] == INQUIRY && */
	/*  (host_byte(cmd->result) == DID_OK || status_byte(cmd->result) & CHECK_CONDITION) ) */
		if ((cmd->result == (DID_OK << 16) ||
		     FUNC25(cmd->result) == CHECK_CONDITION)) {
			if (!dcb->init_tcq_flag) {
				FUNC4(acb, dcb, ptr);
				dcb->init_tcq_flag = 1;
			}
		}

		FUNC20(base);
		FUNC12(flags);
	}

	/* Here is the info for Doug Gilbert's sg3 ... */
	FUNC21(cmd, srb->total_xfer_length);
	/* This may be interpreted by sb. or not ... */
	cmd->SCp.this_residual = srb->total_xfer_length;
	cmd->SCp.buffers_residual = 0;
	if (FUNC5(DBG_KG)) {
		if (srb->total_xfer_length)
			FUNC6(DBG_KG, "srb_done: (0x%p) <%02i-%i> "
				"cmnd=0x%02x Missed %i bytes\n",
				cmd, cmd->device->id, (u8)cmd->device->lun,
				cmd->cmnd[0], srb->total_xfer_length);
	}

	if (srb != acb->tmp_srb) {
		/* Add to free list */
		FUNC6(DBG_0, "srb_done: (0x%p) done result=0x%08x\n",
			cmd, cmd->result);
		FUNC10(&srb->list, &acb->srb_free_list);
	} else {
		FUNC7(KERN_ERR, "srb_done: ERROR! Completed cmd with tmp_srb\n");
	}

	cmd->scsi_done(cmd);
	FUNC27(acb);
}