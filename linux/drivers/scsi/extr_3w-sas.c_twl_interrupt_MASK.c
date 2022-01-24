#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int dma_addr_t ;
struct TYPE_22__ {scalar_t__ status; TYPE_2__* sg_list; } ;
struct TYPE_23__ {TYPE_3__ newcommand; } ;
struct TYPE_25__ {TYPE_4__ command; } ;
struct TYPE_24__ {int* sense_buffer_phys; int chrdev_request_id; scalar_t__* state; TYPE_13__* host; int /*<<< orphan*/  posted_request_count; struct scsi_cmnd** srb; int /*<<< orphan*/  ioctl_wqueue; TYPE_6__** command_packet_virt; TYPE_12__** sense_buffer_virt; int /*<<< orphan*/  flags; } ;
struct TYPE_21__ {scalar_t__ length; } ;
struct TYPE_20__ {int /*<<< orphan*/  request_id; } ;
struct TYPE_19__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_18__ {TYPE_1__ header_desc; } ;
typedef  TYPE_5__ TW_Device_Extension ;
typedef  TYPE_6__ TW_Command_Full ;
typedef  int /*<<< orphan*/  TW_Command_Apache_Header ;

/* Variables and functions */
 int DID_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TWL_HISTATUS_ATTENTION_INTERRUPT ; 
 int TWL_HISTATUS_RESPONSE_INTERRUPT ; 
 int TWL_HISTATUS_VALID_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int TW_IOCTL_CHRDEV_FREE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ,int,char*) ; 
 int TW_Q_LENGTH ; 
 int FUNC7 (int) ; 
 scalar_t__ TW_S_COMPLETED ; 
 scalar_t__ TW_S_POSTED ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_12__*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*,scalar_t__) ; 
 int FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_5__*,int) ; 
 int FUNC20 (TYPE_5__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int) ; 
 scalar_t__ FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC25(int irq, void *dev_instance)
{
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)dev_instance;
	int i, handled = 0, error = 0;
	dma_addr_t mfa = 0;
	u32 reg, regl, regh, response, request_id = 0;
	struct scsi_cmnd *cmd;
	TW_Command_Full *full_command_packet;

	FUNC15(tw_dev->host->host_lock);

	/* Read host interrupt status */
	reg = FUNC10(FUNC1(tw_dev));

	/* Check if this is our interrupt, otherwise bail */
	if (!(reg & TWL_HISTATUS_VALID_INTERRUPT))
		goto twl_interrupt_bail;

	handled = 1;

	/* If we are resetting, bail */
	if (FUNC18(TW_IN_RESET, &tw_dev->flags))
		goto twl_interrupt_bail;

	/* Attention interrupt */
	if (reg & TWL_HISTATUS_ATTENTION_INTERRUPT) {
		if (FUNC22(tw_dev)) {
			FUNC4(tw_dev);
			goto twl_interrupt_bail;
		}
	}

	/* Response interrupt */
	while (reg & TWL_HISTATUS_RESPONSE_INTERRUPT) {
		if (sizeof(dma_addr_t) > 4) {
			regh = FUNC10(FUNC2(tw_dev));
			regl = FUNC10(FUNC3(tw_dev));
			mfa = ((u64)regh << 32) | regl;
		} else
			mfa = FUNC10(FUNC3(tw_dev));

		error = 0;
		response = (u32)mfa;

		/* Check for command packet error */
		if (!FUNC5(response)) {
			for (i=0;i<TW_Q_LENGTH;i++) {
				if (tw_dev->sense_buffer_phys[i] == mfa) {
					request_id = FUNC8(tw_dev->sense_buffer_virt[i]->header_desc.request_id);
					if (tw_dev->srb[request_id] != NULL)
						error = FUNC20(tw_dev, i, request_id, 1, 1);
					else {
						/* Skip ioctl error prints */
						if (request_id != tw_dev->chrdev_request_id)
							error = FUNC20(tw_dev, i, request_id, 0, 1);
						else
							FUNC9(tw_dev->command_packet_virt[request_id], tw_dev->sense_buffer_virt[i], sizeof(TW_Command_Apache_Header));
					}

					/* Now re-post the sense buffer */
					FUNC24((u32)((u64)tw_dev->sense_buffer_phys[i] >> 32), FUNC2(tw_dev));
					FUNC24((u32)tw_dev->sense_buffer_phys[i], FUNC3(tw_dev));
					break;
				}
			}
		} else
			request_id = FUNC7(response);

		full_command_packet = tw_dev->command_packet_virt[request_id];

		/* Check for correct state */
		if (tw_dev->state[request_id] != TW_S_POSTED) {
			if (tw_dev->srb[request_id] != NULL) {
				FUNC6(tw_dev->host, TW_DRIVER, 0xe, "Received a request id that wasn't posted");
				FUNC4(tw_dev);
				goto twl_interrupt_bail;
			}
		}

		/* Check for internal command completion */
		if (tw_dev->srb[request_id] == NULL) {
			if (request_id != tw_dev->chrdev_request_id) {
				if (FUNC19(tw_dev, request_id))
					FUNC6(tw_dev->host, TW_DRIVER, 0xf, "Error completing AEN during attention interrupt");
			} else {
				tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;
				FUNC23(&tw_dev->ioctl_wqueue);
			}
		} else {
			cmd = tw_dev->srb[request_id];

			if (!error)
				cmd->result = (DID_OK << 16);
			
			/* Report residual bytes for single sgl */
			if ((FUNC14(cmd) <= 1) && (full_command_packet->command.newcommand.status == 0)) {
				if (full_command_packet->command.newcommand.sg_list[0].length < FUNC11(tw_dev->srb[request_id]))
					FUNC13(cmd, FUNC11(cmd) - full_command_packet->command.newcommand.sg_list[0].length);
			}

			/* Now complete the io */
			FUNC12(cmd);
			cmd->scsi_done(cmd);
			tw_dev->state[request_id] = TW_S_COMPLETED;
			FUNC21(tw_dev, request_id);
			tw_dev->posted_request_count--;
		}

		/* Check for another response interrupt */
		reg = FUNC10(FUNC1(tw_dev));
	}

twl_interrupt_bail:
	FUNC16(tw_dev->host->host_lock);
	return FUNC0(handled);
}