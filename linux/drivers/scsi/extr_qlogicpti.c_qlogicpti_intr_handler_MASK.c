#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct scsi_cmnd {int result; unsigned char* host_scribble; TYPE_3__* device; int /*<<< orphan*/  sc_data_direction; int /*<<< orphan*/  sense_buffer; } ;
struct qlogicpti {int send_marker; size_t res_out_ptr; scalar_t__ qregs; int /*<<< orphan*/ * cmd_count; TYPE_2__* op; int /*<<< orphan*/  qpti_id; struct scsi_cmnd** cmd_slots; int /*<<< orphan*/ * res_cpu; } ;
struct TYPE_4__ {scalar_t__ entry_type; } ;
struct Status_Entry {size_t handle; scalar_t__ completion_status; int status_flags; int state_flags; TYPE_1__ hdr; int /*<<< orphan*/  req_sense_data; } ;
struct TYPE_6__ {size_t id; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ASYNC_SCSI_BUS_RESET 133 
#define  COMMAND_ERROR 132 
#define  COMMAND_PARAM_ERROR 131 
 scalar_t__ CS_ABORTED ; 
 scalar_t__ CS_RESET_OCCURRED ; 
 int DID_ERROR ; 
 scalar_t__ ENTRY_STATUS ; 
#define  EXECUTION_TIMEOUT_RESET 130 
 scalar_t__ HCCTRL ; 
 size_t HCCTRL_CRIRQ ; 
#define  HOST_INTERFACE_ERROR 129 
#define  INVALID_COMMAND 128 
 scalar_t__ MBOX0 ; 
 scalar_t__ MBOX5 ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ SBUS_SEMAPHORE ; 
 int SBUS_SEMAPHORE_LCK ; 
 scalar_t__ SBUS_STAT ; 
 int SBUS_STAT_RINT ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int SF_GOT_SENSE ; 
 int STF_BUS_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct Status_Entry*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (size_t,scalar_t__) ; 
 scalar_t__ FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static struct scsi_cmnd *FUNC9(struct qlogicpti *qpti)
{
	struct scsi_cmnd *Cmnd, *done_queue = NULL;
	struct Status_Entry *sts;
	u_int in_ptr, out_ptr;

	if (!(FUNC4(qpti->qregs + SBUS_STAT) & SBUS_STAT_RINT))
		return NULL;
		
	in_ptr = FUNC4(qpti->qregs + MBOX5);
	FUNC5(HCCTRL_CRIRQ, qpti->qregs + HCCTRL);
	if (FUNC4(qpti->qregs + SBUS_SEMAPHORE) & SBUS_SEMAPHORE_LCK) {
		switch (FUNC4(qpti->qregs + MBOX0)) {
		case ASYNC_SCSI_BUS_RESET:
		case EXECUTION_TIMEOUT_RESET:
			qpti->send_marker = 1;
			break;
		case INVALID_COMMAND:
		case HOST_INTERFACE_ERROR:
		case COMMAND_ERROR:
		case COMMAND_PARAM_ERROR:
			break;
		};
		FUNC5(0, qpti->qregs + SBUS_SEMAPHORE);
	}

	/* This looks like a network driver! */
	out_ptr = qpti->res_out_ptr;
	while (out_ptr != in_ptr) {
		u_int cmd_slot;

		sts = (struct Status_Entry *) &qpti->res_cpu[out_ptr];
		out_ptr = FUNC0(out_ptr);

		/* We store an index in the handle, not the pointer in
		 * some form.  This avoids problems due to the fact
		 * that the handle provided is only 32-bits. -DaveM
		 */
		cmd_slot = sts->handle;
		Cmnd = qpti->cmd_slots[cmd_slot];
		qpti->cmd_slots[cmd_slot] = NULL;

		if (sts->completion_status == CS_RESET_OCCURRED ||
		    sts->completion_status == CS_ABORTED ||
		    (sts->status_flags & STF_BUS_RESET))
			qpti->send_marker = 1;

		if (sts->state_flags & SF_GOT_SENSE)
			FUNC2(Cmnd->sense_buffer, sts->req_sense_data,
			       SCSI_SENSE_BUFFERSIZE);

		if (sts->hdr.entry_type == ENTRY_STATUS)
			Cmnd->result =
			    FUNC3(sts, qpti->qpti_id);
		else
			Cmnd->result = DID_ERROR << 16;

		if (FUNC6(Cmnd))
			FUNC1(&qpti->op->dev,
				     FUNC8(Cmnd), FUNC7(Cmnd),
				     Cmnd->sc_data_direction);

		qpti->cmd_count[Cmnd->device->id]--;
		FUNC5(out_ptr, qpti->qregs + MBOX5);
		Cmnd->host_scribble = (unsigned char *) done_queue;
		done_queue = Cmnd;
	}
	qpti->res_out_ptr = out_ptr;

	return done_queue;
}