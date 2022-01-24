#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
typedef  scalar_t__ u8 ;
struct viosrp_crq {scalar_t__ valid; } ;
struct TYPE_2__ {int index; int mask; struct viosrp_crq* base_addr; } ;
struct scsi_info {long flags; int state; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  schedule_q; int /*<<< orphan*/  dev; TYPE_1__ cmd_q; int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 scalar_t__ INVALIDATE_CMD_RESP_EL ; 
 long SCHEDULE_DISCONNECT ; 
 scalar_t__ FUNC0 (struct scsi_info*) ; 
 int TRANS_EVENT ; 
 scalar_t__ VALID_TRANS_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 long FUNC3 (struct scsi_info*,struct viosrp_crq*) ; 
 long FUNC4 (struct scsi_info*,struct viosrp_crq*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct scsi_info *vscsi = (struct scsi_info *)data;
	struct viosrp_crq *crq;
	long rc;
	bool ack = true;
	volatile u8 valid;

	FUNC6(&vscsi->intr_lock);

	FUNC1(&vscsi->dev, "got interrupt\n");

	/*
	 * if we are in a path where we are waiting for all pending commands
	 * to complete because we received a transport event and anything in
	 * the command queue is for a new connection, do nothing
	 */
	if (FUNC0(vscsi)) {
		FUNC8(vscsi->dma_dev);

		FUNC1(&vscsi->dev, "handle_crq, don't process: flags 0x%x, state 0x%hx\n",
			vscsi->flags, vscsi->state);
		FUNC7(&vscsi->intr_lock);
		return;
	}

	rc = vscsi->flags & SCHEDULE_DISCONNECT;
	crq = vscsi->cmd_q.base_addr + vscsi->cmd_q.index;
	valid = crq->valid;
	FUNC2();

	while (valid) {
		/*
		 * These are edege triggered interrupts. After dropping out of
		 * the while loop, the code must check for work since an
		 * interrupt could be lost, and an elment be left on the queue,
		 * hence the label.
		 */
cmd_work:
		vscsi->cmd_q.index =
			(vscsi->cmd_q.index + 1) & vscsi->cmd_q.mask;

		if (!rc) {
			rc = FUNC3(vscsi, crq);
		} else {
			if ((uint)crq->valid == VALID_TRANS_EVENT) {
				/*
				 * must service the transport layer events even
				 * in an error state, dont break out until all
				 * the consecutive transport events have been
				 * processed
				 */
				rc = FUNC4(vscsi, crq);
			} else if (vscsi->flags & TRANS_EVENT) {
				/*
				 * if a transport event has occurred leave
				 * everything but transport events on the queue
				 *
				 * need to decrement the queue index so we can
				 * look at the element again
				 */
				if (vscsi->cmd_q.index)
					vscsi->cmd_q.index -= 1;
				else
					/*
					 * index is at 0 it just wrapped.
					 * have it index last element in q
					 */
					vscsi->cmd_q.index = vscsi->cmd_q.mask;
				break;
			}
		}

		crq->valid = INVALIDATE_CMD_RESP_EL;

		crq = vscsi->cmd_q.base_addr + vscsi->cmd_q.index;
		valid = crq->valid;
		FUNC2();
	}

	if (!rc) {
		if (ack) {
			FUNC8(vscsi->dma_dev);
			ack = false;
			FUNC1(&vscsi->dev, "handle_crq, reenabling interrupts\n");
		}
		valid = crq->valid;
		FUNC2();
		if (valid)
			goto cmd_work;
	} else {
		FUNC1(&vscsi->dev, "handle_crq, error: flags 0x%x, state 0x%hx, crq index 0x%x\n",
			vscsi->flags, vscsi->state, vscsi->cmd_q.index);
	}

	FUNC1(&vscsi->dev, "Leaving handle_crq: schedule_q empty %d, flags 0x%x, state 0x%hx\n",
		(int)FUNC5(&vscsi->schedule_q), vscsi->flags,
		vscsi->state);

	FUNC7(&vscsi->intr_lock);
}