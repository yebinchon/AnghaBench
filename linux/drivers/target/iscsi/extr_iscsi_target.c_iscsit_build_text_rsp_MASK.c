#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iscsi_text_rsp {int flags; void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  dlength; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {int /*<<< orphan*/  cid; TYPE_1__* sess; int /*<<< orphan*/  stat_sn; } ;
struct iscsi_cmd {int read_data_done; int targ_xfer_tag; int stat_sn; int /*<<< orphan*/  init_task_tag; scalar_t__ maxcmdsn_inc; } ;
typedef  enum iscsit_transport_type { ____Placeholder_iscsit_transport_type } iscsit_transport_type ;
struct TYPE_3__ {int exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; } ;

/* Variables and functions */
 int ISCSI_FLAG_CMD_FINAL ; 
 int ISCSI_FLAG_TEXT_CONTINUE ; 
 int /*<<< orphan*/  ISCSI_OP_TEXT_RSP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct iscsi_cmd*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (TYPE_1__*) ; 

int
FUNC7(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
		      struct iscsi_text_rsp *hdr,
		      enum iscsit_transport_type network_transport)
{
	int text_length, padding;
	bool completed = true;

	text_length = FUNC3(cmd, network_transport,
							cmd->read_data_done,
							&completed);
	if (text_length < 0)
		return text_length;

	if (completed) {
		hdr->flags = ISCSI_FLAG_CMD_FINAL;
	} else {
		hdr->flags = ISCSI_FLAG_TEXT_CONTINUE;
		cmd->read_data_done += text_length;
		if (cmd->targ_xfer_tag == 0xFFFFFFFF)
			cmd->targ_xfer_tag = FUNC6(conn->sess);
	}
	hdr->opcode = ISCSI_OP_TEXT_RSP;
	padding = ((-text_length) & 3);
	FUNC2(hdr->dlength, text_length);
	hdr->itt = cmd->init_task_tag;
	hdr->ttt = FUNC1(cmd->targ_xfer_tag);
	cmd->stat_sn = conn->stat_sn++;
	hdr->statsn = FUNC1(cmd->stat_sn);

	FUNC4(cmd, conn->sess);
	/*
	 * Reset maxcmdsn_inc in multi-part text payload exchanges to
	 * correctly increment MaxCmdSN for each response answering a
	 * non immediate text request with a valid CmdSN.
	 */
	cmd->maxcmdsn_inc = 0;
	hdr->exp_cmdsn = FUNC1(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn = FUNC1((u32) FUNC0(&conn->sess->max_cmd_sn));

	FUNC5("Built Text Response: ITT: 0x%08x, TTT: 0x%08x, StatSN: 0x%08x,"
		" Length: %u, CID: %hu F: %d C: %d\n", cmd->init_task_tag,
		cmd->targ_xfer_tag, cmd->stat_sn, text_length, conn->cid,
		!!(hdr->flags & ISCSI_FLAG_CMD_FINAL),
		!!(hdr->flags & ISCSI_FLAG_TEXT_CONTINUE));

	return text_length + padding;
}