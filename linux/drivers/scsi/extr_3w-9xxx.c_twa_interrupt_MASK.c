#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;

/* Type definitions */
typedef  int u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_24__ {scalar_t__ status; TYPE_1__* sg_list; } ;
struct TYPE_25__ {TYPE_2__ newcommand; } ;
struct TYPE_28__ {TYPE_3__ command; } ;
struct TYPE_27__ {scalar_t__* state; scalar_t__ pending_request_count; int* pending_queue; size_t pending_head; int chrdev_request_id; TYPE_17__* host; int /*<<< orphan*/  posted_request_count; struct scsi_cmnd** srb; int /*<<< orphan*/  ioctl_wqueue; TYPE_6__** command_packet_virt; int /*<<< orphan*/  flags; } ;
struct TYPE_26__ {int /*<<< orphan*/  response_id; void* value; } ;
struct TYPE_23__ {scalar_t__ length; } ;
struct TYPE_22__ {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_4__ TW_Response_Queue ;
typedef  TYPE_5__ TW_Device_Extension ;
typedef  TYPE_6__ TW_Command_Full ;

/* Variables and functions */
 int CHECK_CONDITION ; 
 int DID_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_IN_ATTENTION_LOOP ; 
 int /*<<< orphan*/  TW_IN_RESET ; 
 int TW_IOCTL_CHRDEV_FREE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_17__*,int /*<<< orphan*/ ,int,char*) ; 
 int TW_Q_LENGTH ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int TW_STATUS_ATTENTION_INTERRUPT ; 
 int TW_STATUS_COMMAND_INTERRUPT ; 
 int TW_STATUS_HOST_INTERRUPT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int TW_STATUS_RESPONSE_INTERRUPT ; 
 int TW_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int TW_STATUS_VALID_INTERRUPT ; 
 void* TW_S_COMPLETED ; 
 scalar_t__ TW_S_PENDING ; 
 scalar_t__ TW_S_POSTED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*,scalar_t__) ; 
 int FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_5__*,int) ; 
 int FUNC21 (TYPE_5__*,int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC24 (TYPE_5__*,int) ; 
 int FUNC25 (TYPE_5__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int*) ; 
 scalar_t__ FUNC28 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC31(int irq, void *dev_instance)
{
	int request_id, error = 0;
	u32 status_reg_value;
	TW_Response_Queue response_que;
	TW_Command_Full *full_command_packet;
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)dev_instance;
	int handled = 0;

	/* Get the per adapter lock */
	FUNC15(tw_dev->host->host_lock);

	/* Read the registers */
	status_reg_value = FUNC10(FUNC8(tw_dev));

	/* Check if this is our interrupt, otherwise bail */
	if (!(status_reg_value & TW_STATUS_VALID_INTERRUPT))
		goto twa_interrupt_bail;

	handled = 1;

	/* If we are resetting, bail */
	if (FUNC19(TW_IN_RESET, &tw_dev->flags))
		goto twa_interrupt_bail;

	/* Check controller for errors */
	if (FUNC22(status_reg_value)) {
		if (FUNC24(tw_dev, status_reg_value)) {
			FUNC1(tw_dev);
			goto twa_interrupt_bail;
		}
	}

	/* Handle host interrupt */
	if (status_reg_value & TW_STATUS_HOST_INTERRUPT)
		FUNC3(tw_dev);

	/* Handle attention interrupt */
	if (status_reg_value & TW_STATUS_ATTENTION_INTERRUPT) {
		FUNC2(tw_dev);
		if (!(FUNC18(TW_IN_ATTENTION_LOOP, &tw_dev->flags))) {
			FUNC27(tw_dev, &request_id);

			error = FUNC21(tw_dev, request_id);
			if (error) {
				tw_dev->state[request_id] = TW_S_COMPLETED;
				FUNC26(tw_dev, request_id);
				FUNC9(TW_IN_ATTENTION_LOOP, &tw_dev->flags);
			}
		}
	}

	/* Handle command interrupt */
	if (status_reg_value & TW_STATUS_COMMAND_INTERRUPT) {
		FUNC4(tw_dev);
		/* Drain as many pending commands as we can */
		while (tw_dev->pending_request_count > 0) {
			request_id = tw_dev->pending_queue[tw_dev->pending_head];
			if (tw_dev->state[request_id] != TW_S_PENDING) {
				FUNC5(tw_dev->host, TW_DRIVER, 0x19, "Found request id that wasn't pending");
				FUNC1(tw_dev);
				goto twa_interrupt_bail;
			}
			if (FUNC28(tw_dev, request_id, 1)==0) {
				tw_dev->pending_head = (tw_dev->pending_head + 1) % TW_Q_LENGTH;
				tw_dev->pending_request_count--;
			} else {
				/* If we get here, we will continue re-posting on the next command interrupt */
				break;
			}
		}
	}

	/* Handle response interrupt */
	if (status_reg_value & TW_STATUS_RESPONSE_INTERRUPT) {

		/* Drain the response queue from the board */
		while ((status_reg_value & TW_STATUS_RESPONSE_QUEUE_EMPTY) == 0) {
			/* Complete the response */
			response_que.value = FUNC10(FUNC7(tw_dev));
			request_id = FUNC6(response_que.response_id);
			full_command_packet = tw_dev->command_packet_virt[request_id];
			error = 0;
			/* Check for command packet errors */
			if (full_command_packet->command.newcommand.status != 0) {
				if (tw_dev->srb[request_id] != NULL) {
					error = FUNC25(tw_dev, request_id, 1, 1);
				} else {
					/* Skip ioctl error prints */
					if (request_id != tw_dev->chrdev_request_id) {
						error = FUNC25(tw_dev, request_id, 0, 1);
					}
				}
			}

			/* Check for correct state */
			if (tw_dev->state[request_id] != TW_S_POSTED) {
				if (tw_dev->srb[request_id] != NULL) {
					FUNC5(tw_dev->host, TW_DRIVER, 0x1a, "Received a request id that wasn't posted");
					FUNC1(tw_dev);
					goto twa_interrupt_bail;
				}
			}

			/* Check for internal command completion */
			if (tw_dev->srb[request_id] == NULL) {
				if (request_id != tw_dev->chrdev_request_id) {
					if (FUNC20(tw_dev, request_id))
						FUNC5(tw_dev->host, TW_DRIVER, 0x1b, "Error completing AEN during attention interrupt");
				} else {
					tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;
					FUNC30(&tw_dev->ioctl_wqueue);
				}
			} else {
				struct scsi_cmnd *cmd;

				cmd = tw_dev->srb[request_id];

				FUNC29(tw_dev, request_id);
				/* If no error command was a success */
				if (error == 0) {
					cmd->result = (DID_OK << 16);
				}

				/* If error, command failed */
				if (error == 1) {
					/* Ask for a host reset */
					cmd->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
				}

				/* Report residual bytes for single sgl */
				if ((FUNC14(cmd) <= 1) && (full_command_packet->command.newcommand.status == 0)) {
					if (full_command_packet->command.newcommand.sg_list[0].length < FUNC11(tw_dev->srb[request_id]))
						FUNC13(cmd, FUNC11(cmd) - full_command_packet->command.newcommand.sg_list[0].length);
				}

				/* Now complete the io */
				if (FUNC23(cmd))
					FUNC12(cmd);
				cmd->scsi_done(cmd);
				tw_dev->state[request_id] = TW_S_COMPLETED;
				FUNC26(tw_dev, request_id);
				tw_dev->posted_request_count--;
			}

			/* Check for valid status after each drain */
			status_reg_value = FUNC10(FUNC8(tw_dev));
			if (FUNC22(status_reg_value)) {
				if (FUNC24(tw_dev, status_reg_value)) {
					FUNC1(tw_dev);
					goto twa_interrupt_bail;
				}
			}
		}
	}

twa_interrupt_bail:
	FUNC16(tw_dev->host->host_lock);
	return FUNC0(handled);
}