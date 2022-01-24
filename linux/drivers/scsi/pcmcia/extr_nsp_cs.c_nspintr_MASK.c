#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int Message; int Status; int phase; int /*<<< orphan*/  have_data_in; } ;
struct scsi_cmnd {int result; int cmd_len; int* cmnd; TYPE_3__ SCp; TYPE_1__* device; } ;
struct TYPE_14__ {TYPE_4__* host; } ;
typedef  TYPE_5__ scsi_info_t ;
struct TYPE_15__ {unsigned int BaseAddress; scalar_t__ TimerCount; scalar_t__ SelectionTimeOut; int MsgLen; int* MsgBuffer; TYPE_2__* Sync; struct scsi_cmnd* CurrentSC; } ;
typedef  TYPE_6__ nsp_hw_data ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_13__ {scalar_t__ hostdata; } ;
struct TYPE_11__ {unsigned int SyncNegotiation; int SyncPeriod; int SyncOffset; } ;
struct TYPE_10__ {unsigned char id; unsigned char lun; } ;

/* Variables and functions */
 int ACKENB ; 
 int AUTODIRECTION ; 
 int AUTO_COMMAND_GO ; 
 unsigned char BUSMON_BSY ; 
 unsigned char BUSMON_PHASE_MASK ; 
 unsigned char BUSMON_REQ ; 
#define  BUSPHASE_COMMAND 136 
#define  BUSPHASE_DATA_IN 135 
#define  BUSPHASE_DATA_OUT 134 
#define  BUSPHASE_MESSAGE_IN 133 
#define  BUSPHASE_MESSAGE_OUT 132 
#define  BUSPHASE_SELECT 131 
#define  BUSPHASE_STATUS 130 
 int CLEAR_COMMAND_POINTER ; 
 int /*<<< orphan*/  COMMANDCTRL ; 
 int /*<<< orphan*/  COMMANDDATA ; 
 int DID_ABORT ; 
 int DID_ERROR ; 
 int DID_OK ; 
 int DID_RESET ; 
 int DID_TIME_OUT ; 
 scalar_t__ FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  IO_IN ; 
 int /*<<< orphan*/  IO_OUT ; 
 int /*<<< orphan*/  IRQCONTROL ; 
 int IRQCONTROL_FIFO_CLEAR ; 
 int IRQCONTROL_IRQDISABLE ; 
 int IRQCONTROL_RESELECT_CLEAR ; 
 int IRQCONTROL_TIMER_CLEAR ; 
 int /*<<< orphan*/  IRQPHASESENCE ; 
 int /*<<< orphan*/  IRQSTATUS ; 
 unsigned char IRQSTATUS_FIFO ; 
 unsigned char IRQSTATUS_MASK ; 
 unsigned char IRQSTATUS_SCSI ; 
 unsigned char IRQSTATUS_TIMER ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned char LATCHED_BUS_FREE ; 
 scalar_t__ MSG_COMMAND_COMPLETE ; 
 int MSG_EXTENDED ; 
 int MSG_EXT_SDTR ; 
 int /*<<< orphan*/  NSP_DEBUG_INTR ; 
 scalar_t__ NSP_SELTIMEOUT ; 
 unsigned char PHASE_CHANGE_IRQ ; 
 int PH_COMMAND ; 
 void* PH_DATA ; 
 int PH_MSG_IN ; 
 int PH_MSG_OUT ; 
#define  PH_RESELECT 129 
 int PH_SELECTED ; 
#define  PH_SELSTART 128 
 int PH_STATUS ; 
 unsigned char RESELECT_IRQ ; 
 int /*<<< orphan*/  SCSIBUSCTRL ; 
 int /*<<< orphan*/  SCSIBUSMON ; 
 int /*<<< orphan*/  SCSIDATAWITHACK ; 
 int SCSI_ATN ; 
 unsigned char SCSI_RESET_IRQ ; 
 unsigned int SYNC_NG ; 
 unsigned int SYNC_NOT_YET ; 
 unsigned int SYNC_OK ; 
 int /*<<< orphan*/  TIMERCOUNT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 unsigned char FUNC13 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static irqreturn_t FUNC21(int irq, void *dev_id)
{
	unsigned int   base;
	unsigned char  irq_status, irq_phase, phase;
	struct scsi_cmnd *tmpSC;
	unsigned char  target, lun;
	unsigned int  *sync_neg;
	int            i, tmp;
	nsp_hw_data   *data;


	//nsp_dbg(NSP_DEBUG_INTR, "dev_id=0x%p", dev_id);
	//nsp_dbg(NSP_DEBUG_INTR, "host=0x%p", ((scsi_info_t *)dev_id)->host);

	if (                dev_id        != NULL &&
	    ((scsi_info_t *)dev_id)->host != NULL  ) {
		scsi_info_t *info = (scsi_info_t *)dev_id;

		data = (nsp_hw_data *)info->host->hostdata;
	} else {
		FUNC4(NSP_DEBUG_INTR, "host data wrong");
		return IRQ_NONE;
	}

	//nsp_dbg(NSP_DEBUG_INTR, "&nsp_data_base=0x%p, dev_id=0x%p", &nsp_data_base, dev_id);

	base = data->BaseAddress;
	//nsp_dbg(NSP_DEBUG_INTR, "base=0x%x", base);

	/*
	 * interrupt check
	 */
	FUNC17(base, IRQCONTROL, IRQCONTROL_IRQDISABLE);
	irq_status = FUNC13(base, IRQSTATUS);
	//nsp_dbg(NSP_DEBUG_INTR, "irq_status=0x%x", irq_status);
	if ((irq_status == 0xff) || ((irq_status & IRQSTATUS_MASK) == 0)) {
		FUNC17(base, IRQCONTROL, 0);
		//nsp_dbg(NSP_DEBUG_INTR, "no irq/shared irq");
		return IRQ_NONE;
	}

	/* XXX: IMPORTANT
	 * Do not read an irq_phase register if no scsi phase interrupt.
	 * Unless, you should lose a scsi phase interrupt.
	 */
	phase = FUNC5(base, SCSIBUSMON);
	if((irq_status & IRQSTATUS_SCSI) != 0) {
		irq_phase = FUNC5(base, IRQPHASESENCE);
	} else {
		irq_phase = 0;
	}

	//nsp_dbg(NSP_DEBUG_INTR, "irq_phase=0x%x", irq_phase);

	/*
	 * timer interrupt handler (scsi vs timer interrupts)
	 */
	//nsp_dbg(NSP_DEBUG_INTR, "timercount=%d", data->TimerCount);
	if (data->TimerCount != 0) {
		//nsp_dbg(NSP_DEBUG_INTR, "stop timer");
		FUNC6(base, TIMERCOUNT, 0);
		FUNC6(base, TIMERCOUNT, 0);
		data->TimerCount = 0;
	}

	if ((irq_status & IRQSTATUS_MASK) == IRQSTATUS_TIMER &&
	    data->SelectionTimeOut == 0) {
		//nsp_dbg(NSP_DEBUG_INTR, "timer start");
		FUNC17(base, IRQCONTROL, IRQCONTROL_TIMER_CLEAR);
		return IRQ_HANDLED;
	}

	FUNC17(base, IRQCONTROL, IRQCONTROL_TIMER_CLEAR | IRQCONTROL_FIFO_CLEAR);

	if ((irq_status & IRQSTATUS_SCSI) &&
	    (irq_phase  & SCSI_RESET_IRQ)) {
		FUNC9(KERN_ERR, "bus reset (power off?)");

		FUNC18(data);
		FUNC2(data);

		if(data->CurrentSC != NULL) {
			tmpSC = data->CurrentSC;
			tmpSC->result  = (DID_RESET                   << 16) |
				         ((tmpSC->SCp.Message & 0xff) <<  8) |
				         ((tmpSC->SCp.Status  & 0xff) <<  0);
			FUNC15(tmpSC);
		}
		return IRQ_HANDLED;
	}

	if (data->CurrentSC == NULL) {
		FUNC9(KERN_ERR, "CurrentSC==NULL irq_status=0x%x phase=0x%x irq_phase=0x%x this can't be happen. reset everything", irq_status, phase, irq_phase);
		FUNC18(data);
		FUNC2(data);
		return IRQ_HANDLED;
	}

	tmpSC    = data->CurrentSC;
	target   = tmpSC->device->id;
	lun      = tmpSC->device->lun;
	sync_neg = &(data->Sync[target].SyncNegotiation);

	/*
	 * parse hardware SCSI irq reasons register
	 */
	if (irq_status & IRQSTATUS_SCSI) {
		if (irq_phase & RESELECT_IRQ) {
			FUNC4(NSP_DEBUG_INTR, "reselect");
			FUNC17(base, IRQCONTROL, IRQCONTROL_RESELECT_CLEAR);
			if (FUNC14(tmpSC) != FALSE) {
				return IRQ_HANDLED;
			}
		}

		if ((irq_phase & (PHASE_CHANGE_IRQ | LATCHED_BUS_FREE)) == 0) {
			return IRQ_HANDLED;
		}
	}

	//show_phase(tmpSC);

	switch(tmpSC->SCp.phase) {
	case PH_SELSTART:
		// *sync_neg = SYNC_NOT_YET;
		if ((phase & BUSMON_BSY) == 0) {
			//nsp_dbg(NSP_DEBUG_INTR, "selection count=%d", data->SelectionTimeOut);
			if (data->SelectionTimeOut >= NSP_SELTIMEOUT) {
				FUNC4(NSP_DEBUG_INTR, "selection time out");
				data->SelectionTimeOut = 0;
				FUNC6(base, SCSIBUSCTRL, 0);

				tmpSC->result   = DID_TIME_OUT << 16;
				FUNC15(tmpSC);

				return IRQ_HANDLED;
			}
			data->SelectionTimeOut += 1;
			FUNC16(tmpSC, 1000/51);
			return IRQ_HANDLED;
		}

		/* attention assert */
		//nsp_dbg(NSP_DEBUG_INTR, "attention assert");
		data->SelectionTimeOut = 0;
		tmpSC->SCp.phase       = PH_SELECTED;
		FUNC6(base, SCSIBUSCTRL, SCSI_ATN);
		FUNC20(1);
		FUNC6(base, SCSIBUSCTRL, SCSI_ATN | AUTODIRECTION | ACKENB);
		return IRQ_HANDLED;

		break;

	case PH_RESELECT:
		//nsp_dbg(NSP_DEBUG_INTR, "phase reselect");
		// *sync_neg = SYNC_NOT_YET;
		if ((phase & BUSMON_PHASE_MASK) != BUSPHASE_MESSAGE_IN) {

			tmpSC->result	= DID_ABORT << 16;
			FUNC15(tmpSC);
			return IRQ_HANDLED;
		}
		/* fall thru */
	default:
		if ((irq_status & (IRQSTATUS_SCSI | IRQSTATUS_FIFO)) == 0) {
			return IRQ_HANDLED;
		}
		break;
	}

	/*
	 * SCSI sequencer
	 */
	//nsp_dbg(NSP_DEBUG_INTR, "start scsi seq");

	/* normal disconnect */
	if (((tmpSC->SCp.phase == PH_MSG_IN) || (tmpSC->SCp.phase == PH_MSG_OUT)) &&
	    (irq_phase & LATCHED_BUS_FREE) != 0 ) {
		FUNC4(NSP_DEBUG_INTR, "normal disconnect irq_status=0x%x, phase=0x%x, irq_phase=0x%x", irq_status, phase, irq_phase);

		//*sync_neg       = SYNC_NOT_YET;

		/* all command complete and return status */
		if (tmpSC->SCp.Message == MSG_COMMAND_COMPLETE) {
			tmpSC->result = (DID_OK		             << 16) |
					((tmpSC->SCp.Message & 0xff) <<  8) |
					((tmpSC->SCp.Status  & 0xff) <<  0);
			FUNC4(NSP_DEBUG_INTR, "command complete result=0x%x", tmpSC->result);
			FUNC15(tmpSC);

			return IRQ_HANDLED;
		}

		return IRQ_HANDLED;
	}


	/* check unexpected bus free state */
	if (phase == 0) {
		FUNC9(KERN_DEBUG, "unexpected bus free. irq_status=0x%x, phase=0x%x, irq_phase=0x%x", irq_status, phase, irq_phase);

		*sync_neg       = SYNC_NG;
		tmpSC->result   = DID_ERROR << 16;
		FUNC15(tmpSC);
		return IRQ_HANDLED;
	}

	switch (phase & BUSMON_PHASE_MASK) {
	case BUSPHASE_COMMAND:
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_COMMAND");
		if ((phase & BUSMON_REQ) == 0) {
			FUNC4(NSP_DEBUG_INTR, "REQ == 0");
			return IRQ_HANDLED;
		}

		tmpSC->SCp.phase = PH_COMMAND;

		FUNC10(tmpSC);

		/* write scsi command */
		FUNC4(NSP_DEBUG_INTR, "cmd_len=%d", tmpSC->cmd_len);
		FUNC6(base, COMMANDCTRL, CLEAR_COMMAND_POINTER);
		for (i = 0; i < tmpSC->cmd_len; i++) {
			FUNC6(base, COMMANDDATA, tmpSC->cmnd[i]);
		}
		FUNC6(base, COMMANDCTRL, CLEAR_COMMAND_POINTER | AUTO_COMMAND_GO);
		break;

	case BUSPHASE_DATA_OUT:
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_DATA_OUT");

		tmpSC->SCp.phase        = PH_DATA;
		tmpSC->SCp.have_data_in = IO_OUT;

		FUNC12(tmpSC);

		break;

	case BUSPHASE_DATA_IN:
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_DATA_IN");

		tmpSC->SCp.phase        = PH_DATA;
		tmpSC->SCp.have_data_in = IO_IN;

		FUNC11(tmpSC);

		break;

	case BUSPHASE_STATUS:
		FUNC3(tmpSC);
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_STATUS");

		tmpSC->SCp.phase = PH_STATUS;

		tmpSC->SCp.Status = FUNC5(base, SCSIDATAWITHACK);
		FUNC4(NSP_DEBUG_INTR, "message=0x%x status=0x%x", tmpSC->SCp.Message, tmpSC->SCp.Status);

		break;

	case BUSPHASE_MESSAGE_OUT:
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_MESSAGE_OUT");
		if ((phase & BUSMON_REQ) == 0) {
			goto timer_out;
		}

		tmpSC->SCp.phase = PH_MSG_OUT;

		//*sync_neg = SYNC_NOT_YET;

		data->MsgLen = i = 0;
		data->MsgBuffer[i] = FUNC0(TRUE, lun); i++;

		if (*sync_neg == SYNC_NOT_YET) {
			data->Sync[target].SyncPeriod = 0;
			data->Sync[target].SyncOffset = 0;

			/**/
			data->MsgBuffer[i] = MSG_EXTENDED; i++;
			data->MsgBuffer[i] = 3;            i++;
			data->MsgBuffer[i] = MSG_EXT_SDTR; i++;
			data->MsgBuffer[i] = 0x0c;         i++;
			data->MsgBuffer[i] = 15;           i++;
			/**/
		}
		data->MsgLen = i;

		FUNC1(tmpSC);
		FUNC19(data);
		FUNC8(tmpSC);
		break;

	case BUSPHASE_MESSAGE_IN:
		FUNC3(tmpSC);
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE_MESSAGE_IN");
		if ((phase & BUSMON_REQ) == 0) {
			goto timer_out;
		}

		tmpSC->SCp.phase = PH_MSG_IN;
		FUNC7(tmpSC);

		/**/
		if (*sync_neg == SYNC_NOT_YET) {
			//nsp_dbg(NSP_DEBUG_INTR, "sync target=%d,lun=%d",target,lun);

			if (data->MsgLen       >= 5            &&
			    data->MsgBuffer[0] == MSG_EXTENDED &&
			    data->MsgBuffer[1] == 3            &&
			    data->MsgBuffer[2] == MSG_EXT_SDTR ) {
				data->Sync[target].SyncPeriod = data->MsgBuffer[3];
				data->Sync[target].SyncOffset = data->MsgBuffer[4];
				//nsp_dbg(NSP_DEBUG_INTR, "sync ok, %d %d", data->MsgBuffer[3], data->MsgBuffer[4]);
				*sync_neg = SYNC_OK;
			} else {
				data->Sync[target].SyncPeriod = 0;
				data->Sync[target].SyncOffset = 0;
				*sync_neg = SYNC_NG;
			}
			FUNC1(tmpSC);
		}
		/**/

		/* search last messeage byte */
		tmp = -1;
		for (i = 0; i < data->MsgLen; i++) {
			tmp = data->MsgBuffer[i];
			if (data->MsgBuffer[i] == MSG_EXTENDED) {
				i += (1 + data->MsgBuffer[i+1]);
			}
		}
		tmpSC->SCp.Message = tmp;

		FUNC4(NSP_DEBUG_INTR, "message=0x%x len=%d", tmpSC->SCp.Message, data->MsgLen);
		FUNC19(data);

		break;

	case BUSPHASE_SELECT:
	default:
		FUNC4(NSP_DEBUG_INTR, "BUSPHASE other");

		break;
	}

	//nsp_dbg(NSP_DEBUG_INTR, "out");
	return IRQ_HANDLED; 	

timer_out:
	FUNC16(tmpSC, 1000/102);
	return IRQ_HANDLED;
}