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
struct se_cmd {int transport_state; } ;
struct iscsi_datain_req {int generate_recovery_values; int /*<<< orphan*/  recovery; scalar_t__ runlength; scalar_t__ begrun; scalar_t__ data_sn; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int cmd_flags; scalar_t__ acked_data_sn; int data_sn; int /*<<< orphan*/  i_state; int /*<<< orphan*/  init_task_tag; struct se_cmd se_cmd; struct iscsi_conn* conn; } ;

/* Variables and functions */
 int CMD_T_COMPLETE ; 
 int /*<<< orphan*/  DATAIN_WITHIN_COMMAND_RECOVERY ; 
 int ICF_GOT_DATACK_SNACK ; 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_INVALID ; 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_NO_RESOURCES ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  ISTATE_SEND_DATAIN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 struct iscsi_datain_req* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,struct iscsi_datain_req*) ; 
 int FUNC3 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC5(
	struct iscsi_cmd *cmd,
	unsigned char *buf,
	u32 begrun,
	u32 runlength)
{
	struct iscsi_conn *conn = cmd->conn;
	struct iscsi_datain_req *dr;
	struct se_cmd *se_cmd = &cmd->se_cmd;

	if (!(se_cmd->transport_state & CMD_T_COMPLETE)) {
		FUNC4("Ignoring ITT: 0x%08x Data SNACK\n",
				cmd->init_task_tag);
		return 0;
	}

	/*
	 * Make sure the initiator is not requesting retransmission
	 * of DataSNs already acknowledged by a Data ACK SNACK.
	 */
	if ((cmd->cmd_flags & ICF_GOT_DATACK_SNACK) &&
	    (begrun <= cmd->acked_data_sn)) {
		FUNC4("ITT: 0x%08x, Data SNACK requesting"
			" retransmission of DataSN: 0x%08x to 0x%08x but"
			" already acked to DataSN: 0x%08x by Data ACK SNACK,"
			" protocol error.\n", cmd->init_task_tag, begrun,
			(begrun + runlength), cmd->acked_data_sn);

		return FUNC3(cmd, ISCSI_REASON_PROTOCOL_ERROR, buf);
	}

	/*
	 * Make sure BegRun and RunLength in the Data SNACK are sane.
	 * Note: (cmd->data_sn - 1) will carry the maximum DataSN sent.
	 */
	if ((begrun + runlength) > (cmd->data_sn - 1)) {
		FUNC4("Initiator requesting BegRun: 0x%08x, RunLength"
			": 0x%08x greater than maximum DataSN: 0x%08x.\n",
				begrun, runlength, (cmd->data_sn - 1));
		return FUNC3(cmd, ISCSI_REASON_BOOKMARK_INVALID,
					 buf);
	}

	dr = FUNC1();
	if (!dr)
		return FUNC3(cmd, ISCSI_REASON_BOOKMARK_NO_RESOURCES,
					 buf);

	dr->data_sn = dr->begrun = begrun;
	dr->runlength = runlength;
	dr->generate_recovery_values = 1;
	dr->recovery = DATAIN_WITHIN_COMMAND_RECOVERY;

	FUNC2(cmd, dr);

	cmd->i_state = ISTATE_SEND_DATAIN;
	FUNC0(cmd, conn, cmd->i_state);

	return 0;
}