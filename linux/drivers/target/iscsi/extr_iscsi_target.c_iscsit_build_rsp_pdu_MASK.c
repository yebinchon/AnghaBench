#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct iscsi_scsi_rsp {void* max_cmdsn; void* exp_cmdsn; void* statsn; int /*<<< orphan*/  itt; int /*<<< orphan*/  cmd_status; int /*<<< orphan*/  response; void* residual_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {int /*<<< orphan*/  cid; TYPE_2__* sess; int /*<<< orphan*/  stat_sn; } ;
struct TYPE_3__ {int se_cmd_flags; int /*<<< orphan*/  scsi_status; scalar_t__ residual_count; } ;
struct iscsi_cmd {TYPE_1__ se_cmd; scalar_t__ stat_sn; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  iscsi_response; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_cmd_sn; scalar_t__ exp_cmd_sn; int /*<<< orphan*/  rsp_pdus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_OVERFLOW ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_UNDERFLOW ; 
 int /*<<< orphan*/  ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  ISCSI_OP_SCSI_CMD_RSP ; 
 int SCF_OVERFLOW_BIT ; 
 int SCF_UNDERFLOW_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cmd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_scsi_rsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
			bool inc_stat_sn, struct iscsi_scsi_rsp *hdr)
{
	if (inc_stat_sn)
		cmd->stat_sn = conn->stat_sn++;

	FUNC0(&conn->sess->rsp_pdus);

	FUNC4(hdr, 0, ISCSI_HDR_LEN);
	hdr->opcode		= ISCSI_OP_SCSI_CMD_RSP;
	hdr->flags		|= ISCSI_FLAG_CMD_FINAL;
	if (cmd->se_cmd.se_cmd_flags & SCF_OVERFLOW_BIT) {
		hdr->flags |= ISCSI_FLAG_CMD_OVERFLOW;
		hdr->residual_count = FUNC2(cmd->se_cmd.residual_count);
	} else if (cmd->se_cmd.se_cmd_flags & SCF_UNDERFLOW_BIT) {
		hdr->flags |= ISCSI_FLAG_CMD_UNDERFLOW;
		hdr->residual_count = FUNC2(cmd->se_cmd.residual_count);
	}
	hdr->response		= cmd->iscsi_response;
	hdr->cmd_status		= cmd->se_cmd.scsi_status;
	hdr->itt		= cmd->init_task_tag;
	hdr->statsn		= FUNC2(cmd->stat_sn);

	FUNC3(cmd, conn->sess);
	hdr->exp_cmdsn		= FUNC2(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn		= FUNC2((u32) FUNC1(&conn->sess->max_cmd_sn));

	FUNC5("Built SCSI Response, ITT: 0x%08x, StatSN: 0x%08x,"
		" Response: 0x%02x, SAM Status: 0x%02x, CID: %hu\n",
		cmd->init_task_tag, cmd->stat_sn, cmd->se_cmd.scsi_status,
		cmd->se_cmd.scsi_status, conn->cid);
}