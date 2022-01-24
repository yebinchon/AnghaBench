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
struct scsi_info {int debit; int flags; int /*<<< orphan*/  wait_idle; int /*<<< orphan*/  waiting_rsp; int /*<<< orphan*/  schedule_q; int /*<<< orphan*/  active_q; int /*<<< orphan*/  free_cmd; int /*<<< orphan*/  dev; } ;
struct iu_entry {int dummy; } ;
struct ibmvscsis_cmd {int type; int /*<<< orphan*/  list; struct iu_entry* iue; } ;

/* Variables and functions */
#define  ADAPTER_MAD 131 
 int PROCESSING_MAD ; 
#define  SCSI_CDB 130 
#define  TASK_MANAGEMENT 129 
#define  UNSET_TYPE 128 
 int WAIT_FOR_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iu_entry*) ; 

__attribute__((used)) static void FUNC5(struct scsi_info *vscsi,
					 struct ibmvscsis_cmd *cmd)
{
	struct iu_entry *iue = cmd->iue;

	switch (cmd->type) {
	case TASK_MANAGEMENT:
	case SCSI_CDB:
		/*
		 * When the queue goes down this value is cleared, so it
		 * cannot be cleared in this general purpose function.
		 */
		if (vscsi->debit)
			vscsi->debit -= 1;
		break;
	case ADAPTER_MAD:
		vscsi->flags &= ~PROCESSING_MAD;
		break;
	case UNSET_TYPE:
		break;
	default:
		FUNC1(&vscsi->dev, "free_cmd_resources unknown type %d\n",
			cmd->type);
		break;
	}

	cmd->iue = NULL;
	FUNC2(&cmd->list, &vscsi->free_cmd);
	FUNC4(iue);

	if (FUNC3(&vscsi->active_q) && FUNC3(&vscsi->schedule_q) &&
	    FUNC3(&vscsi->waiting_rsp) && (vscsi->flags & WAIT_FOR_IDLE)) {
		vscsi->flags &= ~WAIT_FOR_IDLE;
		FUNC0(&vscsi->wait_idle);
	}
}