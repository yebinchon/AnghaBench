#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sbp_tport {struct sbp_tpg* tpg; } ;
struct sbp_tpg {int dummy; } ;
struct TYPE_6__ {void* status; } ;
struct TYPE_4__ {int /*<<< orphan*/  misc; } ;
struct sbp_management_request {scalar_t__ node_addr; TYPE_3__ status; TYPE_1__ orb; } ;
struct sbp_management_agent {struct sbp_tport* tport; } ;
struct sbp_login_descriptor {TYPE_2__* sess; int /*<<< orphan*/  login_id; int /*<<< orphan*/  login_lun; } ;
struct TYPE_5__ {scalar_t__ node_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBP_STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  SBP_STATUS_LOGIN_ID_UNKNOWN ; 
 int /*<<< orphan*/  SBP_STATUS_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_RESP_REQUEST_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct sbp_login_descriptor* FUNC7 (struct sbp_tpg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sbp_login_descriptor*,int) ; 

__attribute__((used)) static void FUNC9(
	struct sbp_management_agent *agent, struct sbp_management_request *req,
	int *status_data_size)
{
	struct sbp_tport *tport = agent->tport;
	struct sbp_tpg *tpg = tport->tpg;
	int id;
	struct sbp_login_descriptor *login;

	id = FUNC0(FUNC3(req->orb.misc));

	login = FUNC7(tpg, id);
	if (!login) {
		FUNC6("cannot find login: %d\n", id);

		req->status.status = FUNC4(
			FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC2(SBP_STATUS_LOGIN_ID_UNKNOWN));
		return;
	}

	FUNC5("mgt_agent LOGOUT from LUN %d session %d\n",
		login->login_lun, login->login_id);

	if (req->node_addr != login->sess->node_id) {
		FUNC6("logout from different node ID\n");

		req->status.status = FUNC4(
			FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC2(SBP_STATUS_ACCESS_DENIED));
		return;
	}

	FUNC8(login, true);

	req->status.status = FUNC4(
		FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
		FUNC2(SBP_STATUS_OK));
}