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
struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int /*<<< orphan*/  flags; } ;
struct iscsi_login {int login_complete; int /*<<< orphan*/  tsih; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsih; } ;

/* Variables and functions */
 int ISCSI_FLAG_LOGIN_CURRENT_STAGE1 ; 
 int ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK ; 
 int ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK ; 
 int ISCSI_FLAG_LOGIN_TRANSIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_TARGET_ERROR ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_TARGET_ERR ; 
 int MAX_LOGIN_PDUS ; 
 scalar_t__ FUNC1 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,struct iscsi_login*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct iscsi_conn *conn, struct iscsi_login *login)
{
	int pdu_count = 0;
	struct iscsi_login_req *login_req;
	struct iscsi_login_rsp *login_rsp;

	login_req = (struct iscsi_login_req *) login->req;
	login_rsp = (struct iscsi_login_rsp *) login->rsp;

	while (1) {
		if (++pdu_count > MAX_LOGIN_PDUS) {
			FUNC7("MAX_LOGIN_PDUS count reached.\n");
			FUNC6(conn, ISCSI_STATUS_CLS_TARGET_ERR,
					ISCSI_LOGIN_STATUS_TARGET_ERROR);
			return -1;
		}

		switch (FUNC0(login_req->flags)) {
		case 0:
			login_rsp->flags &= ~ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK;
			if (FUNC3(conn, login) < 0)
				return -1;
			break;
		case 1:
			login_rsp->flags |= ISCSI_FLAG_LOGIN_CURRENT_STAGE1;
			if (FUNC2(conn, login) < 0)
				return -1;
			if (login_rsp->flags & ISCSI_FLAG_LOGIN_TRANSIT) {
				/*
				 * Check to make sure the TCP connection has not
				 * dropped asynchronously while session reinstatement
				 * was occuring in this kthread context, before
				 * transitioning to full feature phase operation.
				 */
				if (FUNC5(conn))
					return -1;

				login->tsih = conn->sess->tsih;
				login->login_complete = 1;
				FUNC4(conn);
				if (FUNC1(conn,
						login) < 0)
					return -1;
				return 1;
			}
			break;
		default:
			FUNC7("Illegal CSG: %d received from"
				" Initiator, protocol error.\n",
				FUNC0(login_req->flags));
			break;
		}

		if (FUNC1(conn, login) < 0)
			return -1;

		if (login_rsp->flags & ISCSI_FLAG_LOGIN_TRANSIT) {
			login_rsp->flags &= ~ISCSI_FLAG_LOGIN_TRANSIT;
			login_rsp->flags &= ~ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK;
		}
		break;
	}

	return 0;
}