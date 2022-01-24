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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_param {int /*<<< orphan*/  value; } ;
struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int flags; int /*<<< orphan*/  dlength; } ;
struct iscsi_login {int auth_complete; int current_stage; int /*<<< orphan*/  rsp_length; int /*<<< orphan*/  rsp_buf; int /*<<< orphan*/  req_buf; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {int /*<<< orphan*/  param_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHMETHOD ; 
 int ISCSI_FLAG_LOGIN_NEXT_STAGE1 ; 
 int ISCSI_FLAG_LOGIN_TRANSIT ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_AUTH_FAILED ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_TARGET_ERROR ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_TARGET_ERR ; 
 struct iscsi_param* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(
	struct iscsi_conn *conn,
	struct iscsi_login *login)
{
	int authret;
	u32 payload_length;
	struct iscsi_param *param;
	struct iscsi_login_req *login_req;
	struct iscsi_login_rsp *login_rsp;

	login_req = (struct iscsi_login_req *) login->req;
	login_rsp = (struct iscsi_login_rsp *) login->rsp;
	payload_length = FUNC4(login_req->dlength);

	param = FUNC0(AUTHMETHOD, conn->param_list);
	if (!param)
		return -1;

	authret = FUNC1(
			conn,
			login->req_buf,
			login->rsp_buf,
			payload_length,
			&login->rsp_length,
			param->value);
	switch (authret) {
	case 0:
		FUNC5("Received OK response"
		" from LIO Authentication, continuing.\n");
		break;
	case 1:
		FUNC5("iSCSI security negotiation"
			" completed successfully.\n");
		login->auth_complete = 1;
		if ((login_req->flags & ISCSI_FLAG_LOGIN_NEXT_STAGE1) &&
		    (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT)) {
			login_rsp->flags |= (ISCSI_FLAG_LOGIN_NEXT_STAGE1 |
					     ISCSI_FLAG_LOGIN_TRANSIT);
			login->current_stage = 1;
		}
		return FUNC2(
				conn, login);
	case 2:
		FUNC6("Security negotiation"
			" failed.\n");
		FUNC3(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_AUTH_FAILED);
		return -1;
	default:
		FUNC6("Received unknown error %d from LIO"
				" Authentication\n", authret);
		FUNC3(conn, ISCSI_STATUS_CLS_TARGET_ERR,
				ISCSI_LOGIN_STATUS_TARGET_ERROR);
		return -1;
	}

	return 0;
}