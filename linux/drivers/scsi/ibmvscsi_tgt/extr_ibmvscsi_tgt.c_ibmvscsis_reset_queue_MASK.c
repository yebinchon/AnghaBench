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
struct TYPE_6__ {int size; int /*<<< orphan*/  crq_token; } ;
struct TYPE_5__ {int /*<<< orphan*/  unit_id; } ;
struct TYPE_4__ {scalar_t__ timer_pops; } ;
struct scsi_info {long flags; void* state; int /*<<< orphan*/  dev; TYPE_3__ cmd_q; TYPE_2__ dds; int /*<<< orphan*/  dma_dev; scalar_t__ credit; scalar_t__ debit; TYPE_1__ rsp_q_timer; } ;

/* Variables and functions */
 long ADAPT_SUCCESS ; 
 int CLIENT_FAILED ; 
 void* ERR_DISCONNECTED ; 
 long H_CLOSED ; 
 long H_SUCCESS ; 
 int PAGE_SIZE ; 
 int PRESERVE_FLAG_FIELDS ; 
 int RESPONSE_Q_DOWN ; 
 int TRANS_EVENT ; 
 void* WAIT_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 long FUNC2 (struct scsi_info*) ; 
 long FUNC3 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct scsi_info *vscsi)
{
	int bytes;
	long rc = ADAPT_SUCCESS;

	FUNC0(&vscsi->dev, "reset_queue: flags 0x%x\n", vscsi->flags);

	/* don't reset, the client did it for us */
	if (vscsi->flags & (CLIENT_FAILED | TRANS_EVENT)) {
		vscsi->flags &= PRESERVE_FLAG_FIELDS;
		vscsi->rsp_q_timer.timer_pops = 0;
		vscsi->debit = 0;
		vscsi->credit = 0;
		vscsi->state = WAIT_CONNECTION;
		FUNC4(vscsi->dma_dev);
	} else {
		rc = FUNC3(vscsi);
		if (rc == ADAPT_SUCCESS) {
			vscsi->state = WAIT_CONNECTION;

			bytes = vscsi->cmd_q.size * PAGE_SIZE;
			rc = FUNC1(vscsi->dds.unit_id,
				       vscsi->cmd_q.crq_token, bytes);
			if (rc == H_CLOSED || rc == H_SUCCESS) {
				rc = FUNC2(vscsi);
			}

			if (rc != ADAPT_SUCCESS) {
				FUNC0(&vscsi->dev, "reset_queue: reg_crq rc %ld\n",
					rc);

				vscsi->state = ERR_DISCONNECTED;
				vscsi->flags |= RESPONSE_Q_DOWN;
				FUNC3(vscsi);
			}
		} else {
			vscsi->state = ERR_DISCONNECTED;
			vscsi->flags |= RESPONSE_Q_DOWN;
		}
	}
}