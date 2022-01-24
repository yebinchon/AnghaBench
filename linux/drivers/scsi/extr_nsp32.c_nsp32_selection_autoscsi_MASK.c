#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int cmd_len; int* cmnd; TYPE_2__* device; } ;
struct TYPE_10__ {int msgout_len; int trans_method; TYPE_4__* cur_lunt; TYPE_3__* cur_target; scalar_t__* msgoutbuf; } ;
typedef  TYPE_5__ nsp32_hw_data ;
struct TYPE_9__ {unsigned int sglun_paddr; } ;
struct TYPE_8__ {int sample_reg; int syncreg; int ackwidth; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {unsigned int io_port; unsigned int this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_WIDTH ; 
 unsigned short ALL_COUNTER_CLR ; 
 int ARBIT_CLEAR ; 
 unsigned short AUTOSCSI_START ; 
 unsigned short AUTO_ATN ; 
 unsigned short AUTO_MSGIN_00_OR_04 ; 
 unsigned short AUTO_MSGIN_02 ; 
 int FUNC0 (unsigned char) ; 
 unsigned short BM_START ; 
 unsigned char BUSMON_BSY ; 
 unsigned char BUSMON_SEL ; 
 unsigned short CB_IO_MODE ; 
 unsigned short CB_MMIO_MODE ; 
 unsigned short CLEAR_CDB_FIFO_POINTER ; 
 int /*<<< orphan*/  COMMAND_CONTROL ; 
 int /*<<< orphan*/  COMMAND_DATA ; 
 int DID_BUS_BUSY ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  IRQ_CONTROL ; 
 unsigned short IRQ_CONTROL_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int MV_VALID ; 
 int /*<<< orphan*/  NSP32_DEBUG_AUTOSCSI ; 
 int /*<<< orphan*/  NSP32_DEBUG_CDB_CONTENTS ; 
 int NSP32_TRANSFER_BUSMASTER ; 
 int NSP32_TRANSFER_MMIO ; 
 int NSP32_TRANSFER_PIO ; 
 int /*<<< orphan*/  SCSI_BUS_MONITOR ; 
 int /*<<< orphan*/  SCSI_EXECUTE_PHASE ; 
 int /*<<< orphan*/  SCSI_MSG_OUT ; 
 int /*<<< orphan*/  SCSI_OUT_LATCH_TARGET_ID ; 
 unsigned short SEL_TIMEOUT_TIME ; 
 int /*<<< orphan*/  SEL_TIME_OUT ; 
 int /*<<< orphan*/  SET_ARBIT ; 
 int /*<<< orphan*/  SGT_ADR ; 
 int /*<<< orphan*/  SREQ_SMPL_RATE ; 
 int /*<<< orphan*/  SYNC_REG ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 unsigned short TRANSFER_GO ; 
 int FUNC1 (struct scsi_cmnd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned short FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned char FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *SCpnt)
{
	nsp32_hw_data  *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	unsigned int	base    = SCpnt->device->host->io_port;
	unsigned int	host_id = SCpnt->device->host->this_id;
	unsigned char	target  = FUNC10(SCpnt);
	unsigned char	phase;
	int		status;
	unsigned short	command	= 0;
	unsigned int	msgout  = 0;
	unsigned short	execph;
	int		i;

	FUNC2(NSP32_DEBUG_AUTOSCSI, "in");

	/*
	 * IRQ disable
	 */
	FUNC8(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);

	/*
	 * check bus line
	 */
	phase = FUNC4(base, SCSI_BUS_MONITOR);
	if ((phase & BUSMON_BSY) || (phase & BUSMON_SEL)) {
		FUNC3(KERN_WARNING, "bus busy");
		SCpnt->result = DID_BUS_BUSY << 16;
		status = 1;
		goto out;
        }

	/*
	 * clear execph
	 */
	execph = FUNC5(base, SCSI_EXECUTE_PHASE);

	/*
	 * clear FIFO counter to set CDBs
	 */
	FUNC8(base, COMMAND_CONTROL, CLEAR_CDB_FIFO_POINTER);

	/*
	 * set CDB0 - CDB15
	 */
	for (i = 0; i < SCpnt->cmd_len; i++) {
		FUNC7(base, COMMAND_DATA, SCpnt->cmnd[i]);
        }
	FUNC2(NSP32_DEBUG_CDB_CONTENTS, "CDB[0]=[0x%x]", SCpnt->cmnd[0]);

	/*
	 * set SCSIOUT LATCH(initiator)/TARGET(target) (OR-ed) ID
	 */
	FUNC7(base, SCSI_OUT_LATCH_TARGET_ID, FUNC0(host_id) | FUNC0(target));

	/*
	 * set SCSI MSGOUT REG
	 *
	 * Note: If the range of msgout_len is 1 - 3, fill scsi_msgout.
	 *       over 3 messages needs another routine.
	 */
	if (data->msgout_len == 0) {
		FUNC3(KERN_ERR, "SCSI MsgOut without any message!");
		SCpnt->result = DID_ERROR << 16;
		status = 1;
		goto out;
	} else if (data->msgout_len > 0 && data->msgout_len <= 3) {
		msgout = 0;
		for (i = 0; i < data->msgout_len; i++) {
			/*
			 * the sending order of the message is:
			 *  MCNT 3: MSG#0 -> MSG#1 -> MSG#2
			 *  MCNT 2:          MSG#1 -> MSG#2
			 *  MCNT 1:                   MSG#2    
			 */
			msgout >>= 8;
			msgout |= ((unsigned int)(data->msgoutbuf[i]) << 24);
		}
		msgout |= MV_VALID;	/* MV valid */
		msgout |= (unsigned int)data->msgout_len; /* len */
		FUNC9(base, SCSI_MSG_OUT, msgout);
	} else {
		/* data->msgout_len > 3 */
		FUNC9(base, SCSI_MSG_OUT, 0);
	}

	/*
	 * set selection timeout(= 250ms)
	 */
	FUNC8(base, SEL_TIME_OUT,   SEL_TIMEOUT_TIME);

	/*
	 * set SREQ hazard killer sampling rate
	 * 
	 * TODO: sample_rate (BASE+0F) is 0 when internal clock = 40MHz.
	 *      check other internal clock!
	 */
	FUNC7(base, SREQ_SMPL_RATE, data->cur_target->sample_reg);

	/*
	 * clear Arbit
	 */
	FUNC7(base, SET_ARBIT,      ARBIT_CLEAR);

	/*
	 * set SYNCREG
	 * Don't set BM_START_ADR before setting this register.
	 */
	FUNC7(base, SYNC_REG,  data->cur_target->syncreg);

	/*
	 * set ACKWIDTH
	 */
	FUNC7(base, ACK_WIDTH, data->cur_target->ackwidth);

	FUNC2(NSP32_DEBUG_AUTOSCSI,
		  "syncreg=0x%x, ackwidth=0x%x, sgtpaddr=0x%x, id=0x%x",
		  FUNC4(base, SYNC_REG), FUNC4(base, ACK_WIDTH),
		  FUNC6(base, SGT_ADR), FUNC4(base, SCSI_OUT_LATCH_TARGET_ID));
	FUNC2(NSP32_DEBUG_AUTOSCSI, "msgout_len=%d, msgout=0x%x",
		  data->msgout_len, msgout);

	/*
	 * set SGT ADDR (physical address)
	 */
	FUNC9(base, SGT_ADR, data->cur_lunt->sglun_paddr);

	/*
	 * set TRANSFER CONTROL REG
	 */
	command = 0;
	command |= (TRANSFER_GO | ALL_COUNTER_CLR);
	if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
		if (FUNC11(SCpnt) > 0) {
			command |= BM_START;
		}
	} else if (data->trans_method & NSP32_TRANSFER_MMIO) {
		command |= CB_MMIO_MODE;
	} else if (data->trans_method & NSP32_TRANSFER_PIO) {
		command |= CB_IO_MODE;
	}
	FUNC8(base, TRANSFER_CONTROL, command);

	/*
	 * start AUTO SCSI, kick off arbitration
	 */
	command = (CLEAR_CDB_FIFO_POINTER |
		   AUTOSCSI_START         |
		   AUTO_MSGIN_00_OR_04    |
		   AUTO_MSGIN_02          |
		   AUTO_ATN                );
	FUNC8(base, COMMAND_CONTROL, command);

	/*
	 * Check arbitration
	 */
	status = FUNC1(SCpnt, base);

 out:
	/*
	 * IRQ enable
	 */
	FUNC8(base, IRQ_CONTROL, 0);

	return status;
}