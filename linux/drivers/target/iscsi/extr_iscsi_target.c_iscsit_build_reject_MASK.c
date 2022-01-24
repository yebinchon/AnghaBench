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
typedef  int u32 ;
struct iscsi_reject {void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ffffffff; int /*<<< orphan*/  dlength; int /*<<< orphan*/  flags; int /*<<< orphan*/  reason; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {TYPE_1__* sess; int /*<<< orphan*/  stat_sn; } ;
struct iscsi_cmd {int stat_sn; int /*<<< orphan*/  reject_reason; } ;
struct TYPE_2__ {int exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int /*<<< orphan*/  ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  ISCSI_OP_REJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
		    struct iscsi_reject *hdr)
{
	hdr->opcode		= ISCSI_OP_REJECT;
	hdr->reason		= cmd->reject_reason;
	hdr->flags		|= ISCSI_FLAG_CMD_FINAL;
	FUNC2(hdr->dlength, ISCSI_HDR_LEN);
	hdr->ffffffff		= FUNC1(0xffffffff);
	cmd->stat_sn		= conn->stat_sn++;
	hdr->statsn		= FUNC1(cmd->stat_sn);
	hdr->exp_cmdsn		= FUNC1(conn->sess->exp_cmd_sn);
	hdr->max_cmdsn		= FUNC1((u32) FUNC0(&conn->sess->max_cmd_sn));

}