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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_nopin {void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  lun; int /*<<< orphan*/  dlength; int /*<<< orphan*/  flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {TYPE_1__* sess; int /*<<< orphan*/  stat_sn; } ;
struct iscsi_cmd {int /*<<< orphan*/  buf_ptr_size; int /*<<< orphan*/  stat_sn; int /*<<< orphan*/  targ_xfer_tag; int /*<<< orphan*/  init_task_tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  exp_cmd_sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int /*<<< orphan*/  ISCSI_OP_NOOP_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cmd*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

void
FUNC6(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
		       struct iscsi_nopin *hdr, bool nopout_response)
{
	hdr->opcode		= ISCSI_OP_NOOP_IN;
	hdr->flags		|= ISCSI_FLAG_CMD_FINAL;
        FUNC2(hdr->dlength, cmd->buf_ptr_size);
	if (nopout_response)
		FUNC5(0xFFFFFFFFFFFFFFFFULL, &hdr->lun);
	hdr->itt		= cmd->init_task_tag;
	hdr->ttt		= FUNC1(cmd->targ_xfer_tag);
	cmd->stat_sn		= (nopout_response) ? conn->stat_sn++ :
				  conn->stat_sn;
	hdr->statsn		= FUNC1(cmd->stat_sn);

	if (nopout_response)
		FUNC3(cmd, conn->sess);

	hdr->exp_cmdsn		= FUNC1(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn		= FUNC1((u32) FUNC0(&conn->sess->max_cmd_sn));

	FUNC4("Built NOPIN %s Response ITT: 0x%08x, TTT: 0x%08x,"
		" StatSN: 0x%08x, Length %u\n", (nopout_response) ?
		"Solicited" : "Unsolicited", cmd->init_task_tag,
		cmd->targ_xfer_tag, cmd->stat_sn, cmd->buf_ptr_size);
}