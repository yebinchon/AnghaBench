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
typedef  scalar_t__ u32 ;
struct iscsi_r2t {int dummy; } ;
struct iscsi_cmd {int cmd_flags; scalar_t__ acked_data_sn; scalar_t__ r2t_sn; int /*<<< orphan*/  init_task_tag; } ;

/* Variables and functions */
 int ICF_GOT_DATACK_SNACK ; 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_INVALID ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 struct iscsi_r2t* FUNC0 (struct iscsi_cmd*,scalar_t__) ; 
 int FUNC1 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (struct iscsi_cmd*,struct iscsi_r2t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_cmd *cmd,
	unsigned char *buf,
	u32 begrun,
	u32 runlength)
{
	u32 last_r2tsn;
	struct iscsi_r2t *r2t;

	/*
	 * Make sure the initiator is not requesting retransmission
	 * of R2TSNs already acknowledged by a TMR TASK_REASSIGN.
	 */
	if ((cmd->cmd_flags & ICF_GOT_DATACK_SNACK) &&
	    (begrun <= cmd->acked_data_sn)) {
		FUNC3("ITT: 0x%08x, R2T SNACK requesting"
			" retransmission of R2TSN: 0x%08x to 0x%08x but already"
			" acked to  R2TSN: 0x%08x by TMR TASK_REASSIGN,"
			" protocol error.\n", cmd->init_task_tag, begrun,
			(begrun + runlength), cmd->acked_data_sn);

		return FUNC1(cmd, ISCSI_REASON_PROTOCOL_ERROR, buf);
	}

	if (runlength) {
		if ((begrun + runlength) > cmd->r2t_sn) {
			FUNC3("Command ITT: 0x%08x received R2T SNACK"
			" with BegRun: 0x%08x, RunLength: 0x%08x, exceeds"
			" current R2TSN: 0x%08x, protocol error.\n",
			cmd->init_task_tag, begrun, runlength, cmd->r2t_sn);
			return FUNC1(cmd,
					ISCSI_REASON_BOOKMARK_INVALID, buf);
		}
		last_r2tsn = (begrun + runlength);
	} else
		last_r2tsn = cmd->r2t_sn;

	while (begrun < last_r2tsn) {
		r2t = FUNC0(cmd, begrun);
		if (!r2t)
			return -1;
		if (FUNC2(cmd, r2t) < 0)
			return -1;

		begrun++;
	}

	return 0;
}