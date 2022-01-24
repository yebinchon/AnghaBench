#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_param {int /*<<< orphan*/  value; } ;
struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int flags; int /*<<< orphan*/  dlength; } ;
struct iscsi_login {int current_stage; scalar_t__ auth_complete; int /*<<< orphan*/  rsp_length; int /*<<< orphan*/  rsp_buf; scalar_t__ first_request; int /*<<< orphan*/  req_buf; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {TYPE_2__* tpg; int /*<<< orphan*/  param_list; } ;
struct TYPE_3__ {scalar_t__ authentication; int /*<<< orphan*/  login_keys_workaround; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHMETHOD ; 
 int ISCSI_FLAG_LOGIN_NEXT_STAGE1 ; 
 int ISCSI_FLAG_LOGIN_TRANSIT ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_AUTH_FAILED ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_INIT_ERR ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 int /*<<< orphan*/  NONE ; 
 int PHASE_DECLARATIVE ; 
 int PHASE_SECURITY ; 
 int SENDER_INITIATOR ; 
 int SENDER_RECEIVER ; 
 int /*<<< orphan*/  SENDER_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iscsi_conn*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_param* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iscsi_conn*,struct iscsi_login*) ; 
 int FUNC5 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(
	struct iscsi_conn *conn,
	struct iscsi_login *login)
{
	int ret;
	u32 payload_length;
	struct iscsi_param *param;
	struct iscsi_login_req *login_req;
	struct iscsi_login_rsp *login_rsp;

	login_req = (struct iscsi_login_req *) login->req;
	login_rsp = (struct iscsi_login_rsp *) login->rsp;
	payload_length = FUNC7(login_req->dlength);

	param = FUNC3(AUTHMETHOD, conn->param_list);
	if (!param)
		return -1;

	ret = FUNC1(
			PHASE_SECURITY|PHASE_DECLARATIVE,
			SENDER_INITIATOR|SENDER_RECEIVER,
			login->req_buf,
			payload_length,
			conn);
	if (ret < 0)
		return -1;

	if (ret > 0) {
		if (login->auth_complete) {
			FUNC8("Initiator has already been"
				" successfully authenticated, but is still"
				" sending %s keys.\n", param->value);
			FUNC6(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
					ISCSI_LOGIN_STATUS_INIT_ERR);
			return -1;
		}

		goto do_auth;
	} else if (!payload_length) {
		FUNC8("Initiator sent zero length security payload,"
		       " login failed\n");
		FUNC6(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				    ISCSI_LOGIN_STATUS_AUTH_FAILED);
		return -1;
	}

	if (login->first_request)
		if (FUNC4(conn, login) < 0)
			return -1;

	ret = FUNC2(
			PHASE_SECURITY|PHASE_DECLARATIVE,
			SENDER_TARGET,
			login->rsp_buf,
			&login->rsp_length,
			conn->param_list,
			conn->tpg->tpg_attrib.login_keys_workaround);
	if (ret < 0)
		return -1;

	if (!FUNC0(conn->param_list)) {
		if (conn->tpg->tpg_attrib.authentication &&
		    !FUNC9(param->value, NONE, 4)) {
			FUNC8("Initiator sent AuthMethod=None but"
				" Target is enforcing iSCSI Authentication,"
					" login failed.\n");
			FUNC6(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
					ISCSI_LOGIN_STATUS_AUTH_FAILED);
			return -1;
		}

		if (conn->tpg->tpg_attrib.authentication &&
		    !login->auth_complete)
			return 0;

		if (FUNC9(param->value, NONE, 4) && !login->auth_complete)
			return 0;

		if ((login_req->flags & ISCSI_FLAG_LOGIN_NEXT_STAGE1) &&
		    (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT)) {
			login_rsp->flags |= ISCSI_FLAG_LOGIN_NEXT_STAGE1 |
					    ISCSI_FLAG_LOGIN_TRANSIT;
			login->current_stage = 1;
		}
	}

	return 0;
do_auth:
	return FUNC5(conn, login);
}