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
typedef  int u32 ;
struct iscsi_login_req {int opcode; int flags; int itt; int /*<<< orphan*/  isid; int /*<<< orphan*/  min_version; int /*<<< orphan*/  max_version; int /*<<< orphan*/  dlength; } ;
struct iscsi_login {int current_stage; int init_task_tag; int /*<<< orphan*/  isid; int /*<<< orphan*/  version_min; int /*<<< orphan*/  version_max; scalar_t__ req; } ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 int ISCSI_FLAG_LOGIN_CONTINUE ; 
 int ISCSI_FLAG_LOGIN_TRANSIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_INIT_ERR ; 
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_LOGIN 128 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 int MAX_KEY_VALUE_PAIRS ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(
	struct iscsi_conn *conn,
	struct iscsi_login *login)
{
	int req_csg, req_nsg;
	u32 payload_length;
	struct iscsi_login_req *login_req;

	login_req = (struct iscsi_login_req *) login->req;
	payload_length = FUNC4(login_req->dlength);

	switch (login_req->opcode & ISCSI_OPCODE_MASK) {
	case ISCSI_OP_LOGIN:
		break;
	default:
		FUNC5("Received unknown opcode 0x%02x.\n",
				login_req->opcode & ISCSI_OPCODE_MASK);
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if ((login_req->flags & ISCSI_FLAG_LOGIN_CONTINUE) &&
	    (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT)) {
		FUNC5("Login request has both ISCSI_FLAG_LOGIN_CONTINUE"
			" and ISCSI_FLAG_LOGIN_TRANSIT set, protocol error.\n");
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	req_csg = FUNC0(login_req->flags);
	req_nsg = FUNC1(login_req->flags);

	if (req_csg != login->current_stage) {
		FUNC5("Initiator unexpectedly changed login stage"
			" from %d to %d, login failed.\n", login->current_stage,
			req_csg);
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if ((req_nsg == 2) || (req_csg >= 2) ||
	   ((login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT) &&
	    (req_nsg <= req_csg))) {
		FUNC5("Illegal login_req->flags Combination, CSG: %d,"
			" NSG: %d, ISCSI_FLAG_LOGIN_TRANSIT: %d.\n", req_csg,
			req_nsg, (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT));
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if ((login_req->max_version != login->version_max) ||
	    (login_req->min_version != login->version_min)) {
		FUNC5("Login request changed Version Max/Nin"
			" unexpectedly to 0x%02x/0x%02x, protocol error\n",
			login_req->max_version, login_req->min_version);
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if (FUNC3(login_req->isid, login->isid, 6) != 0) {
		FUNC5("Login request changed ISID unexpectedly,"
				" protocol error.\n");
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if (login_req->itt != login->init_task_tag) {
		FUNC5("Login request changed ITT unexpectedly to"
			" 0x%08x, protocol error.\n", login_req->itt);
		FUNC2(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_INIT_ERR);
		return -1;
	}

	if (payload_length > MAX_KEY_VALUE_PAIRS) {
		FUNC5("Login request payload exceeds default"
			" MaxRecvDataSegmentLength: %u, protocol error.\n",
				MAX_KEY_VALUE_PAIRS);
		return -1;
	}

	return 0;
}