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
struct iscsi_login_req {int /*<<< orphan*/  tsih; int /*<<< orphan*/  cid; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  itt; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  isid; int /*<<< orphan*/  max_version; int /*<<< orphan*/  min_version; int /*<<< orphan*/  flags; int /*<<< orphan*/  dlength; } ;
struct iscsi_login {int leading_connection; scalar_t__ req_buf; void* tsih; void* cid; void* initial_exp_statsn; int /*<<< orphan*/  init_task_tag; void* cmd_sn; int /*<<< orphan*/  isid; int /*<<< orphan*/  version_max; int /*<<< orphan*/  version_min; int /*<<< orphan*/  current_stage; scalar_t__ req; scalar_t__ first_request; } ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 int ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_KEY_VALUE_PAIRS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iscsi_conn*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct iscsi_conn *conn, struct iscsi_login *login)
{
	struct iscsi_login_req *login_req;
	u32 padding = 0, payload_length;

	if (FUNC3(conn, login->req, ISCSI_HDR_LEN) < 0)
		return -1;

	login_req = (struct iscsi_login_req *)login->req;
	payload_length	= FUNC7(login_req->dlength);
	padding = ((-payload_length) & 3);

	FUNC8("Got Login Command, Flags 0x%02x, ITT: 0x%08x,"
		" CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\n",
		login_req->flags, login_req->itt, login_req->cmdsn,
		login_req->exp_statsn, login_req->cid, payload_length);
	/*
	 * Setup the initial iscsi_login values from the leading
	 * login request PDU.
	 */
	if (login->first_request) {
		login_req = (struct iscsi_login_req *)login->req;
		login->leading_connection = (!login_req->tsih) ? 1 : 0;
		login->current_stage	= FUNC0(login_req->flags);
		login->version_min	= login_req->min_version;
		login->version_max	= login_req->max_version;
		FUNC5(login->isid, login_req->isid, 6);
		login->cmd_sn		= FUNC2(login_req->cmdsn);
		login->init_task_tag	= login_req->itt;
		login->initial_exp_statsn = FUNC2(login_req->exp_statsn);
		login->cid		= FUNC1(login_req->cid);
		login->tsih		= FUNC1(login_req->tsih);
	}

	if (FUNC4(conn, login) < 0)
		return -1;

	FUNC6(login->req_buf, 0, MAX_KEY_VALUE_PAIRS);
	if (FUNC3(conn, login->req_buf,
				payload_length + padding) < 0)
		return -1;

	return 0;
}