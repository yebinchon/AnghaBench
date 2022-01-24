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
struct iscsi_text {int opcode; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  ttt; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  conn_cmd_list; } ;
struct iscsi_cmd {unsigned char* text_in_ptr; int targ_xfer_tag; int /*<<< orphan*/  i_conn_node; int /*<<< orphan*/  cmd_flags; } ;

/* Variables and functions */
 int CMDSN_ERROR_CANNOT_RECOVER ; 
 int /*<<< orphan*/  ICF_SENDTARGETS_ALL ; 
 int /*<<< orphan*/  ICF_SENDTARGETS_SINGLE ; 
 int ISCSI_OP_IMMEDIATE ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int) ; 
 int FUNC2 (struct iscsi_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC4 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (unsigned char*,char) ; 
 scalar_t__ FUNC10 (char*,unsigned char*,int) ; 

int
FUNC11(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
			struct iscsi_text *hdr)
{
	unsigned char *text_in = cmd->text_in_ptr, *text_ptr;
	int cmdsn_ret;

	if (!text_in) {
		cmd->targ_xfer_tag = FUNC0(hdr->ttt);
		if (cmd->targ_xfer_tag == 0xFFFFFFFF) {
			FUNC6("Unable to locate text_in buffer for sendtargets"
			       " discovery\n");
			goto reject;
		}
		goto empty_sendtargets;
	}
	if (FUNC10("SendTargets", text_in, 11) != 0) {
		FUNC6("Received Text Data that is not"
			" SendTargets, cannot continue.\n");
		goto reject;
	}
	text_ptr = FUNC9(text_in, '=');
	if (!text_ptr) {
		FUNC6("No \"=\" separator found in Text Data,"
			"  cannot continue.\n");
		goto reject;
	}
	if (!FUNC10("=All", text_ptr, 4)) {
		cmd->cmd_flags |= ICF_SENDTARGETS_ALL;
	} else if (!FUNC10("=iqn.", text_ptr, 5) ||
		   !FUNC10("=eui.", text_ptr, 5)) {
		cmd->cmd_flags |= ICF_SENDTARGETS_SINGLE;
	} else {
		FUNC6("Unable to locate valid SendTargets=%s value\n", text_ptr);
		goto reject;
	}

	FUNC7(&conn->cmd_lock);
	FUNC5(&cmd->i_conn_node, &conn->conn_cmd_list);
	FUNC8(&conn->cmd_lock);

empty_sendtargets:
	FUNC1(conn, FUNC0(hdr->exp_statsn));

	if (!(hdr->opcode & ISCSI_OP_IMMEDIATE)) {
		cmdsn_ret = FUNC4(conn, cmd,
				(unsigned char *)hdr, hdr->cmdsn);
		if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
			return -1;

		return 0;
	}

	return FUNC2(cmd, 0);

reject:
	return FUNC3(cmd, ISCSI_REASON_PROTOCOL_ERROR,
				 (unsigned char *)hdr);
}