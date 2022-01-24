#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_state; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  cmdsn_mutex; int /*<<< orphan*/  sess_ooo_cmdsn_list; } ;

/* Variables and functions */
 int CMDSN_ERROR_CANNOT_RECOVER ; 
#define  CMDSN_HIGHER_THAN_EXP 131 
#define  CMDSN_LOWER_THAN_EXP 130 
#define  CMDSN_MAXCMDSN_OVERRUN 129 
#define  CMDSN_NORMAL_OPERATION 128 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_NO_RESOURCES ; 
 int /*<<< orphan*/  ISTATE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iscsi_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,struct iscsi_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
			unsigned char *buf, __be32 cmdsn)
{
	int ret, cmdsn_ret;
	bool reject = false;
	u8 reason = ISCSI_REASON_BOOKMARK_NO_RESOURCES;

	FUNC8(&conn->sess->cmdsn_mutex);

	cmdsn_ret = FUNC2(conn->sess, FUNC0(cmdsn));
	switch (cmdsn_ret) {
	case CMDSN_NORMAL_OPERATION:
		ret = FUNC3(cmd, 0);
		if ((ret >= 0) && !FUNC7(&conn->sess->sess_ooo_cmdsn_list))
			FUNC4(conn->sess);
		else if (ret < 0) {
			reject = true;
			ret = CMDSN_ERROR_CANNOT_RECOVER;
		}
		break;
	case CMDSN_HIGHER_THAN_EXP:
		ret = FUNC5(conn->sess, cmd, FUNC0(cmdsn));
		if (ret < 0) {
			reject = true;
			ret = CMDSN_ERROR_CANNOT_RECOVER;
			break;
		}
		ret = CMDSN_HIGHER_THAN_EXP;
		break;
	case CMDSN_LOWER_THAN_EXP:
	case CMDSN_MAXCMDSN_OVERRUN:
	default:
		cmd->i_state = ISTATE_REMOVE;
		FUNC1(cmd, conn, cmd->i_state);
		/*
		 * Existing callers for iscsit_sequence_cmd() will silently
		 * ignore commands with CMDSN_LOWER_THAN_EXP, so force this
		 * return for CMDSN_MAXCMDSN_OVERRUN as well..
		 */
		ret = CMDSN_LOWER_THAN_EXP;
		break;
	}
	FUNC9(&conn->sess->cmdsn_mutex);

	if (reject)
		FUNC6(cmd, reason, buf);

	return ret;
}