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
struct iscsi_nopout {scalar_t__ itt; scalar_t__ exp_statsn; int opcode; scalar_t__ ttt; int /*<<< orphan*/  cmdsn; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  conn_cmd_list; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_conn_node; } ;

/* Variables and functions */
 int CMDSN_ERROR_CANNOT_RECOVER ; 
 int CMDSN_LOWER_THAN_EXP ; 
 int EINVAL ; 
 int ISCSI_OP_IMMEDIATE ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  ISTATE_REMOVE ; 
 scalar_t__ RESERVED_ITT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iscsi_conn*,int /*<<< orphan*/ ,unsigned char*) ; 
 struct iscsi_cmd* FUNC6 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_cmd*,int) ; 
 int FUNC8 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
			   struct iscsi_nopout *hdr)
{
	struct iscsi_cmd *cmd_p = NULL;
	int cmdsn_ret = 0;
	/*
	 * Initiator is expecting a NopIN ping reply..
	 */
	if (hdr->itt != RESERVED_ITT) {
		if (!cmd)
			return FUNC5(conn, ISCSI_REASON_PROTOCOL_ERROR,
						(unsigned char *)hdr);

		FUNC12(&conn->cmd_lock);
		FUNC11(&cmd->i_conn_node, &conn->conn_cmd_list);
		FUNC13(&conn->cmd_lock);

		FUNC2(conn, FUNC0(hdr->exp_statsn));

		if (hdr->opcode & ISCSI_OP_IMMEDIATE) {
			FUNC4(cmd, conn,
							 cmd->i_state);
			return 0;
		}

		cmdsn_ret = FUNC8(conn, cmd,
				(unsigned char *)hdr, hdr->cmdsn);
                if (cmdsn_ret == CMDSN_LOWER_THAN_EXP)
			return 0;
		if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
			return -1;

		return 0;
	}
	/*
	 * This was a response to a unsolicited NOPIN ping.
	 */
	if (hdr->ttt != FUNC1(0xFFFFFFFF)) {
		cmd_p = FUNC6(conn, FUNC0(hdr->ttt));
		if (!cmd_p)
			return -EINVAL;

		FUNC10(conn);

		cmd_p->i_state = ISTATE_REMOVE;
		FUNC3(cmd_p, conn, cmd_p->i_state);

		FUNC9(conn);
		return 0;
	}
	/*
	 * Otherwise, initiator is not expecting a NOPIN is response.
	 * Just ignore for now.
	 */

	if (cmd)
		FUNC7(cmd, false);

        return 0;
}