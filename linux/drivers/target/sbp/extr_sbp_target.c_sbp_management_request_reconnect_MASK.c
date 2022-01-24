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
typedef  scalar_t__ u64 ;
struct sbp_tport {struct sbp_tpg* tpg; } ;
struct sbp_tpg {int dummy; } ;
struct TYPE_6__ {void* status; } ;
struct TYPE_4__ {int /*<<< orphan*/  misc; } ;
struct sbp_management_request {TYPE_3__ status; int /*<<< orphan*/  speed; int /*<<< orphan*/  card; int /*<<< orphan*/  node_addr; int /*<<< orphan*/  generation; TYPE_1__ orb; } ;
struct sbp_management_agent {struct sbp_tport* tport; } ;
struct sbp_login_descriptor {TYPE_2__* sess; } ;
struct TYPE_5__ {scalar_t__ guid; int /*<<< orphan*/  lock; int /*<<< orphan*/  speed; scalar_t__ card; int /*<<< orphan*/  node_id; int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBP_STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  SBP_STATUS_OK ; 
 int /*<<< orphan*/  SBP_STATUS_UNSPECIFIED_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_RESP_REQUEST_COMPLETE ; 
 int /*<<< orphan*/  STATUS_RESP_TRANSPORT_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (scalar_t__*,struct sbp_management_request*) ; 
 struct sbp_login_descriptor* FUNC11 (struct sbp_tpg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(
	struct sbp_management_agent *agent, struct sbp_management_request *req,
	int *status_data_size)
{
	struct sbp_tport *tport = agent->tport;
	struct sbp_tpg *tpg = tport->tpg;
	int ret;
	u64 guid;
	struct sbp_login_descriptor *login;

	ret = FUNC10(&guid, req);
	if (ret != RCODE_COMPLETE) {
		FUNC9("failed to read peer GUID: %d\n", ret);

		req->status.status = FUNC4(
			FUNC1(STATUS_RESP_TRANSPORT_FAILURE) |
			FUNC2(SBP_STATUS_UNSPECIFIED_ERROR));
		return;
	}

	FUNC8("mgt_agent RECONNECT from %016llx\n", guid);

	login = FUNC11(tpg,
		FUNC0(FUNC3(req->orb.misc)));

	if (!login) {
		FUNC7("mgt_agent RECONNECT unknown login ID\n");

		req->status.status = FUNC4(
			FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC2(SBP_STATUS_ACCESS_DENIED));
		return;
	}

	if (login->sess->guid != guid) {
		FUNC7("mgt_agent RECONNECT login GUID doesn't match\n");

		req->status.status = FUNC4(
			FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC2(SBP_STATUS_ACCESS_DENIED));
		return;
	}

	FUNC12(&login->sess->lock);
	if (login->sess->card)
		FUNC6(login->sess->card);

	/* update the node details */
	login->sess->generation = req->generation;
	login->sess->node_id = req->node_addr;
	login->sess->card = FUNC5(req->card);
	login->sess->speed = req->speed;
	FUNC13(&login->sess->lock);

	req->status.status = FUNC4(
		FUNC1(STATUS_RESP_REQUEST_COMPLETE) |
		FUNC2(SBP_STATUS_OK));
}