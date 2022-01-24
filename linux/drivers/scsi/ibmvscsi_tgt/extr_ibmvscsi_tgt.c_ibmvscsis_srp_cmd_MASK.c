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
typedef  scalar_t__ uint ;
struct viosrp_crq {int dummy; } ;
struct srp_tsk_mgmt {int /*<<< orphan*/  tag; } ;
struct srp_cmd {int opcode; int /*<<< orphan*/  tag; } ;
struct scsi_info {scalar_t__ request_limit; scalar_t__ debit; scalar_t__ state; int /*<<< orphan*/  dev; int /*<<< orphan*/  work_q; int /*<<< orphan*/  schedule_q; } ;
struct iu_entry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tag; } ;
struct ibmvscsis_cmd {int /*<<< orphan*/  work; int /*<<< orphan*/  list; int /*<<< orphan*/  type; TYPE_2__ rsp; struct iu_entry* iue; } ;
struct TYPE_4__ {struct srp_tsk_mgmt tsk_mgmt; struct srp_cmd cmd; } ;
struct TYPE_6__ {TYPE_1__ srp; } ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 int /*<<< orphan*/  ERR_DISCONNECT_RECONNECT ; 
 int /*<<< orphan*/  SCSI_CDB ; 
#define  SRP_AER_RSP 133 
#define  SRP_CMD 132 
#define  SRP_CRED_RSP 131 
#define  SRP_I_LOGOUT 130 
#define  SRP_LOGIN_REQ 129 
 scalar_t__ SRP_PROCESSING ; 
#define  SRP_TSK_MGMT 128 
 int /*<<< orphan*/  TASK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 long FUNC2 (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_info*,struct ibmvscsis_cmd*) ; 
 struct ibmvscsis_cmd* FUNC4 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC6 (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ; 
 long FUNC7 (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (struct iu_entry*) ; 

__attribute__((used)) static void FUNC11(struct scsi_info *vscsi, struct viosrp_crq *crq)
{
	struct ibmvscsis_cmd *cmd;
	struct iu_entry *iue;
	struct srp_cmd *srp;
	struct srp_tsk_mgmt *tsk;
	long rc;

	if (vscsi->request_limit - vscsi->debit <= 0) {
		/* Client has exceeded request limit */
		FUNC1(&vscsi->dev, "Client exceeded the request limit (%d), debit %d\n",
			vscsi->request_limit, vscsi->debit);
		FUNC5(vscsi, ERR_DISCONNECT_RECONNECT, 0);
		return;
	}

	cmd = FUNC4(vscsi);
	if (!cmd) {
		FUNC1(&vscsi->dev, "srp_cmd failed to get cmd, debit %d\n",
			vscsi->debit);
		FUNC5(vscsi, ERR_DISCONNECT_RECONNECT, 0);
		return;
	}
	iue = cmd->iue;
	srp = &FUNC10(iue)->srp.cmd;

	rc = FUNC2(vscsi, cmd, crq);
	if (rc) {
		FUNC3(vscsi, cmd);
		return;
	}

	if (vscsi->state == SRP_PROCESSING) {
		switch (srp->opcode) {
		case SRP_LOGIN_REQ:
			rc = FUNC7(vscsi, cmd, crq);
			break;

		case SRP_TSK_MGMT:
			tsk = &FUNC10(iue)->srp.tsk_mgmt;
			FUNC0(&vscsi->dev, "tsk_mgmt tag: %llu (0x%llx)\n",
				tsk->tag, tsk->tag);
			cmd->rsp.tag = tsk->tag;
			vscsi->debit += 1;
			cmd->type = TASK_MANAGEMENT;
			FUNC8(&cmd->list, &vscsi->schedule_q);
			FUNC9(vscsi->work_q, &cmd->work);
			break;

		case SRP_CMD:
			FUNC0(&vscsi->dev, "srp_cmd tag: %llu (0x%llx)\n",
				srp->tag, srp->tag);
			cmd->rsp.tag = srp->tag;
			vscsi->debit += 1;
			cmd->type = SCSI_CDB;
			/*
			 * We want to keep track of work waiting for
			 * the workqueue.
			 */
			FUNC8(&cmd->list, &vscsi->schedule_q);
			FUNC9(vscsi->work_q, &cmd->work);
			break;

		case SRP_I_LOGOUT:
			rc = FUNC6(vscsi, cmd, crq);
			break;

		case SRP_CRED_RSP:
		case SRP_AER_RSP:
		default:
			FUNC3(vscsi, cmd);
			FUNC1(&vscsi->dev, "invalid srp cmd, opcode %d\n",
				(uint)srp->opcode);
			FUNC5(vscsi,
						  ERR_DISCONNECT_RECONNECT, 0);
			break;
		}
	} else if (srp->opcode == SRP_LOGIN_REQ && vscsi->state == CONNECTED) {
		rc = FUNC7(vscsi, cmd, crq);
	} else {
		FUNC3(vscsi, cmd);
		FUNC1(&vscsi->dev, "Invalid state %d to handle srp cmd\n",
			vscsi->state);
		FUNC5(vscsi, ERR_DISCONNECT_RECONNECT, 0);
	}
}