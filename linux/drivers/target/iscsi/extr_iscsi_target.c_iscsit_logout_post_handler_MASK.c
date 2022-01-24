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
struct iscsi_conn {int /*<<< orphan*/  cid; } ;
struct iscsi_cmd {int logout_reason; int /*<<< orphan*/  logout_response; int /*<<< orphan*/  logout_cid; } ;

/* Variables and functions */
#define  ISCSI_LOGOUT_CID_NOT_FOUND 134 
#define  ISCSI_LOGOUT_CLEANUP_FAILED 133 
#define  ISCSI_LOGOUT_REASON_CLOSE_CONNECTION 132 
#define  ISCSI_LOGOUT_REASON_CLOSE_SESSION 131 
#define  ISCSI_LOGOUT_REASON_RECOVERY 130 
#define  ISCSI_LOGOUT_RECOVERY_UNSUPPORTED 129 
#define  ISCSI_LOGOUT_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 

int FUNC3(
	struct iscsi_cmd *cmd,
	struct iscsi_conn *conn)
{
	int ret = 0;

	switch (cmd->logout_reason) {
	case ISCSI_LOGOUT_REASON_CLOSE_SESSION:
		switch (cmd->logout_response) {
		case ISCSI_LOGOUT_SUCCESS:
		case ISCSI_LOGOUT_CLEANUP_FAILED:
		default:
			FUNC0(conn);
			break;
		}
		ret = 0;
		break;
	case ISCSI_LOGOUT_REASON_CLOSE_CONNECTION:
		if (conn->cid == cmd->logout_cid) {
			switch (cmd->logout_response) {
			case ISCSI_LOGOUT_SUCCESS:
			case ISCSI_LOGOUT_CLEANUP_FAILED:
			default:
				FUNC2(conn);
				break;
			}
			ret = 0;
		} else {
			switch (cmd->logout_response) {
			case ISCSI_LOGOUT_SUCCESS:
				FUNC1(conn,
					cmd->logout_cid);
				break;
			case ISCSI_LOGOUT_CID_NOT_FOUND:
			case ISCSI_LOGOUT_CLEANUP_FAILED:
			default:
				break;
			}
			ret = 1;
		}
		break;
	case ISCSI_LOGOUT_REASON_RECOVERY:
		switch (cmd->logout_response) {
		case ISCSI_LOGOUT_SUCCESS:
		case ISCSI_LOGOUT_CID_NOT_FOUND:
		case ISCSI_LOGOUT_RECOVERY_UNSUPPORTED:
		case ISCSI_LOGOUT_CLEANUP_FAILED:
		default:
			break;
		}
		ret = 1;
		break;
	default:
		break;

	}
	return ret;
}