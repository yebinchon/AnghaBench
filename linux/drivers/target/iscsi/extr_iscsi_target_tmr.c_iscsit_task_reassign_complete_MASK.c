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
struct iscsi_tmr_req {struct iscsi_cmd* ref_cmd; } ;
struct iscsi_conn {int /*<<< orphan*/  cid; } ;
struct iscsi_cmd {int iscsi_opcode; int /*<<< orphan*/  init_task_tag; struct iscsi_conn* conn; } ;

/* Variables and functions */
#define  ISCSI_OP_NOOP_OUT 129 
#define  ISCSI_OP_SCSI_CMD 128 
 int FUNC0 (struct iscsi_tmr_req*,struct iscsi_conn*) ; 
 int FUNC1 (struct iscsi_tmr_req*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_tmr_req *tmr_req,
	struct iscsi_conn *conn)
{
	struct iscsi_cmd *cmd;
	int ret = 0;

	if (!tmr_req->ref_cmd) {
		FUNC3("TMR Request is missing a RefCmd struct iscsi_cmd.\n");
		return -1;
	}
	cmd = tmr_req->ref_cmd;

	cmd->conn = conn;

	switch (cmd->iscsi_opcode) {
	case ISCSI_OP_NOOP_OUT:
		ret = FUNC0(tmr_req, conn);
		break;
	case ISCSI_OP_SCSI_CMD:
		ret = FUNC1(tmr_req, conn);
		break;
	default:
		 FUNC3("Illegal iSCSI Opcode 0x%02x during"
			" command reallegiance\n", cmd->iscsi_opcode);
		return -1;
	}

	if (ret != 0)
		return ret;

	FUNC2("Completed connection reallegiance for Opcode: 0x%02x,"
		" ITT: 0x%08x to CID: %hu.\n", cmd->iscsi_opcode,
			cmd->init_task_tag, conn->cid);

	return 0;
}