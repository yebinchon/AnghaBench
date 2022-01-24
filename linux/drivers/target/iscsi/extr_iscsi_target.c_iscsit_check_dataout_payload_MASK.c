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
struct iscsi_data {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int cmd_flags; int /*<<< orphan*/  se_cmd; int /*<<< orphan*/  istate_lock; int /*<<< orphan*/  i_state; struct iscsi_conn* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iscsit_get_dataout ) (struct iscsi_conn*,struct iscsi_cmd*,int) ;} ;

/* Variables and functions */
 int DATAOUT_NORMAL ; 
 int DATAOUT_SEND_R2T ; 
 int DATAOUT_SEND_TO_TRANSPORT ; 
 int DATAOUT_WITHIN_COMMAND_RECOVERY ; 
 int ICF_GOT_LAST_DATAOUT ; 
 int ICF_OOO_CMDSN ; 
 int /*<<< orphan*/  ISTATE_RECEIVED_LAST_DATAOUT ; 
 int FUNC0 (struct iscsi_cmd*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*,struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct iscsi_cmd *cmd, struct iscsi_data *hdr,
			     bool data_crc_failed)
{
	struct iscsi_conn *conn = cmd->conn;
	int rc, ooo_cmdsn;
	/*
	 * Increment post receive data and CRC values or perform
	 * within-command recovery.
	 */
	rc = FUNC0(cmd, (unsigned char *)hdr, data_crc_failed);
	if ((rc == DATAOUT_NORMAL) || (rc == DATAOUT_WITHIN_COMMAND_RECOVERY))
		return 0;
	else if (rc == DATAOUT_SEND_R2T) {
		FUNC1(cmd);
		conn->conn_transport->iscsit_get_dataout(conn, cmd, false);
	} else if (rc == DATAOUT_SEND_TO_TRANSPORT) {
		/*
		 * Handle extra special case for out of order
		 * Unsolicited Data Out.
		 */
		FUNC3(&cmd->istate_lock);
		ooo_cmdsn = (cmd->cmd_flags & ICF_OOO_CMDSN);
		cmd->cmd_flags |= ICF_GOT_LAST_DATAOUT;
		cmd->i_state = ISTATE_RECEIVED_LAST_DATAOUT;
		FUNC4(&cmd->istate_lock);

		FUNC2(cmd);
		if (ooo_cmdsn)
			return 0;
		FUNC6(&cmd->se_cmd);
		return 0;
	} else /* DATAOUT_CANNOT_RECOVER */
		return -1;

	return 0;
}