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
typedef  scalar_t__ u32 ;
struct iscsi_conn {TYPE_3__* conn_transport; int /*<<< orphan*/  cid; TYPE_2__* sess; int /*<<< orphan*/  stat_sn; } ;
struct iscsi_cmd {int targ_xfer_tag; int /*<<< orphan*/  logout_cid; scalar_t__ stat_sn; int /*<<< orphan*/  init_task_tag; scalar_t__ pdu; void* iscsi_opcode; } ;
struct iscsi_async {void* param3; void* param2; void* param1; int /*<<< orphan*/  async_event; void* max_cmdsn; void* exp_cmdsn; void* statsn; int /*<<< orphan*/ * rsvd4; int /*<<< orphan*/  flags; void* opcode; } ;
struct TYPE_6__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__* sess_ops; int /*<<< orphan*/  max_cmd_sn; scalar_t__ exp_cmd_sn; } ;
struct TYPE_4__ {int /*<<< orphan*/  DefaultTime2Retain; int /*<<< orphan*/  DefaultTime2Wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_ASYNC_MSG_DROPPING_CONNECTION ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 void* ISCSI_OP_ASYNC_EVENT ; 
 int /*<<< orphan*/  RESERVED_ITT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn)
{
	struct iscsi_async *hdr;

	cmd->iscsi_opcode = ISCSI_OP_ASYNC_EVENT;

	hdr			= (struct iscsi_async *) cmd->pdu;
	hdr->opcode		= ISCSI_OP_ASYNC_EVENT;
	hdr->flags		= ISCSI_FLAG_CMD_FINAL;
	cmd->init_task_tag	= RESERVED_ITT;
	cmd->targ_xfer_tag	= 0xFFFFFFFF;
	FUNC4(0xFFFFFFFFFFFFFFFFULL, &hdr->rsvd4[0]);
	cmd->stat_sn		= conn->stat_sn++;
	hdr->statsn		= FUNC2(cmd->stat_sn);
	hdr->exp_cmdsn		= FUNC2(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn		= FUNC2((u32) FUNC0(&conn->sess->max_cmd_sn));
	hdr->async_event	= ISCSI_ASYNC_MSG_DROPPING_CONNECTION;
	hdr->param1		= FUNC1(cmd->logout_cid);
	hdr->param2		= FUNC1(conn->sess->sess_ops->DefaultTime2Wait);
	hdr->param3		= FUNC1(conn->sess->sess_ops->DefaultTime2Retain);

	FUNC3("Sending Connection Dropped Async Message StatSN:"
		" 0x%08x, for CID: %hu on CID: %hu\n", cmd->stat_sn,
			cmd->logout_cid, conn->cid);

	return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL, NULL, 0);
}