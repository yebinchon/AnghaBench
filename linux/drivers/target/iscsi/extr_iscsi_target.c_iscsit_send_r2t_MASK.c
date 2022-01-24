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
typedef  int /*<<< orphan*/  u32 ;
struct scsi_lun {int dummy; } ;
struct iscsi_r2t_rsp {void* statsn; void* data_length; void* data_offset; void* r2tsn; void* max_cmdsn; void* exp_cmdsn; void* ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  lun; int /*<<< orphan*/  flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_r2t {int sent_r2t; int /*<<< orphan*/  xfer_len; int /*<<< orphan*/  offset; int /*<<< orphan*/  r2t_sn; int /*<<< orphan*/  targ_xfer_tag; int /*<<< orphan*/  recovery_r2t; } ;
struct iscsi_conn {TYPE_2__* conn_transport; int /*<<< orphan*/  cid; TYPE_3__* sess; int /*<<< orphan*/  stat_sn; } ;
struct TYPE_4__ {int /*<<< orphan*/  orig_fe_lun; } ;
struct iscsi_cmd {int /*<<< orphan*/  dataout_timeout_lock; int /*<<< orphan*/  r2t_lock; int /*<<< orphan*/  init_task_tag; TYPE_1__ se_cmd; scalar_t__ pdu; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  exp_cmd_sn; } ;
struct TYPE_5__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* iscsit_get_r2t_ttt ) (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_r2t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int /*<<< orphan*/  ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  ISCSI_OP_R2T ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 struct iscsi_r2t* FUNC3 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_r2t_rsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_r2t*) ; 
 int FUNC12 (struct iscsi_conn*,struct iscsi_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn)
{
	struct iscsi_r2t *r2t;
	struct iscsi_r2t_rsp *hdr;
	int ret;

	r2t = FUNC3(cmd);
	if (!r2t)
		return -1;

	hdr			= (struct iscsi_r2t_rsp *) cmd->pdu;
	FUNC5(hdr, 0, ISCSI_HDR_LEN);
	hdr->opcode		= ISCSI_OP_R2T;
	hdr->flags		|= ISCSI_FLAG_CMD_FINAL;
	FUNC2(cmd->se_cmd.orig_fe_lun,
			(struct scsi_lun *)&hdr->lun);
	hdr->itt		= cmd->init_task_tag;
	if (conn->conn_transport->iscsit_get_r2t_ttt)
		conn->conn_transport->iscsit_get_r2t_ttt(conn, cmd, r2t);
	else
		r2t->targ_xfer_tag = FUNC8(conn->sess);
	hdr->ttt		= FUNC1(r2t->targ_xfer_tag);
	hdr->statsn		= FUNC1(conn->stat_sn);
	hdr->exp_cmdsn		= FUNC1(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn		= FUNC1((u32) FUNC0(&conn->sess->max_cmd_sn));
	hdr->r2tsn		= FUNC1(r2t->r2t_sn);
	hdr->data_offset	= FUNC1(r2t->offset);
	hdr->data_length	= FUNC1(r2t->xfer_len);

	FUNC7("Built %sR2T, ITT: 0x%08x, TTT: 0x%08x, StatSN:"
		" 0x%08x, R2TSN: 0x%08x, Offset: %u, DDTL: %u, CID: %hu\n",
		(!r2t->recovery_r2t) ? "" : "Recovery ", cmd->init_task_tag,
		r2t->targ_xfer_tag, FUNC6(hdr->statsn), r2t->r2t_sn,
			r2t->offset, r2t->xfer_len, conn->cid);

	FUNC9(&cmd->r2t_lock);
	r2t->sent_r2t = 1;
	FUNC10(&cmd->r2t_lock);

	ret = conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL, NULL, 0);
	if (ret < 0) {
		return ret;
	}

	FUNC9(&cmd->dataout_timeout_lock);
	FUNC4(cmd, conn);
	FUNC10(&cmd->dataout_timeout_lock);

	return 0;
}