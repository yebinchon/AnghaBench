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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_text {int flags; int opcode; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  itt; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_2__* sess; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {int immediate_cmd; int targ_xfer_tag; int /*<<< orphan*/ * text_in_ptr; int /*<<< orphan*/  data_direction; void* exp_stat_sn; void* cmd_sn; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  i_state; int /*<<< orphan*/  iscsi_opcode; } ;
struct TYPE_4__ {int /*<<< orphan*/  init_task_tag; } ;
struct TYPE_3__ {int /*<<< orphan*/  MaxXmitDataSegmentLength; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int ISCSI_FLAG_CMD_FINAL ; 
 int ISCSI_FLAG_TEXT_CONTINUE ; 
 int ISCSI_OP_IMMEDIATE ; 
 int /*<<< orphan*/  ISCSI_OP_TEXT ; 
 int /*<<< orphan*/  ISCSI_REASON_CMD_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  ISTATE_SEND_TEXTRSP ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int
FUNC6(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
		      struct iscsi_text *hdr)
{
	u32 payload_length = FUNC3(hdr->dlength);

	if (payload_length > conn->conn_ops->MaxXmitDataSegmentLength) {
		FUNC5("Unable to accept text parameter length: %u"
			"greater than MaxXmitDataSegmentLength %u.\n",
		       payload_length, conn->conn_ops->MaxXmitDataSegmentLength);
		return FUNC1(cmd, ISCSI_REASON_PROTOCOL_ERROR,
					 (unsigned char *)hdr);
	}

	if (!(hdr->flags & ISCSI_FLAG_CMD_FINAL) ||
	     (hdr->flags & ISCSI_FLAG_TEXT_CONTINUE)) {
		FUNC5("Multi sequence text commands currently not supported\n");
		return FUNC1(cmd, ISCSI_REASON_CMD_NOT_SUPPORTED,
					(unsigned char *)hdr);
	}

	FUNC4("Got Text Request: ITT: 0x%08x, CmdSN: 0x%08x,"
		" ExpStatSN: 0x%08x, Length: %u\n", hdr->itt, hdr->cmdsn,
		hdr->exp_statsn, payload_length);

	cmd->iscsi_opcode	= ISCSI_OP_TEXT;
	cmd->i_state		= ISTATE_SEND_TEXTRSP;
	cmd->immediate_cmd	= ((hdr->opcode & ISCSI_OP_IMMEDIATE) ? 1 : 0);
	conn->sess->init_task_tag = cmd->init_task_tag  = hdr->itt;
	cmd->targ_xfer_tag	= 0xFFFFFFFF;
	cmd->cmd_sn		= FUNC0(hdr->cmdsn);
	cmd->exp_stat_sn	= FUNC0(hdr->exp_statsn);
	cmd->data_direction	= DMA_NONE;
	FUNC2(cmd->text_in_ptr);
	cmd->text_in_ptr	= NULL;

	return 0;
}