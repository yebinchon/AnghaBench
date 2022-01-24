#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct nvmf_connect_data {scalar_t__ cntlid; int /*<<< orphan*/  hostnqn; int /*<<< orphan*/  subsysnqn; } ;
struct nvmf_connect_command {scalar_t__ qid; scalar_t__ recfmt; } ;
struct nvmet_req {TYPE_4__* cqe; TYPE_1__* cmd; } ;
struct nvmet_ctrl {int /*<<< orphan*/  cntlid; TYPE_2__* subsys; } ;
struct TYPE_7__ {int /*<<< orphan*/  u16; int /*<<< orphan*/  u32; } ;
struct TYPE_8__ {TYPE_3__ result; } ;
struct TYPE_6__ {int max_qid; } ;
struct TYPE_5__ {struct nvmf_connect_command connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NVME_SC_CONNECT_FORMAT ; 
 int NVME_SC_CONNECT_INVALID_PARAM ; 
 int NVME_SC_DNR ; 
 int NVME_SC_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmf_connect_data*) ; 
 struct nvmf_connect_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct nvmet_req*,int /*<<< orphan*/ ,struct nvmf_connect_data*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nvmet_req*,struct nvmet_ctrl**) ; 
 int /*<<< orphan*/  FUNC7 (struct nvmet_ctrl*) ; 
 int FUNC8 (struct nvmet_ctrl*,struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvmet_req*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct nvmet_req *req)
{
	struct nvmf_connect_command *c = &req->cmd->connect;
	struct nvmf_connect_data *d;
	struct nvmet_ctrl *ctrl = NULL;
	u16 qid = FUNC4(c->qid);
	u16 status = 0;

	d = FUNC3(sizeof(*d), GFP_KERNEL);
	if (!d) {
		status = NVME_SC_INTERNAL;
		goto complete;
	}

	status = FUNC5(req, 0, d, sizeof(*d));
	if (status)
		goto out;

	/* zero out initial completion result, assign values as needed */
	req->cqe->result.u32 = 0;

	if (c->recfmt != 0) {
		FUNC11("invalid connect version (%d).\n",
			FUNC4(c->recfmt));
		status = NVME_SC_CONNECT_FORMAT | NVME_SC_DNR;
		goto out;
	}

	status = FUNC6(d->subsysnqn, d->hostnqn,
				     FUNC4(d->cntlid),
				     req, &ctrl);
	if (status)
		goto out;

	if (FUNC12(qid > ctrl->subsys->max_qid)) {
		FUNC11("invalid queue id (%d)\n", qid);
		status = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
		req->cqe->result.u32 = FUNC0(qid);
		goto out_ctrl_put;
	}

	status = FUNC8(ctrl, req);
	if (status) {
		/* pass back cntlid that had the issue of installing queue */
		req->cqe->result.u16 = FUNC1(ctrl->cntlid);
		goto out_ctrl_put;
	}

	FUNC10("adding queue %d to ctrl %d.\n", qid, ctrl->cntlid);

out:
	FUNC2(d);
complete:
	FUNC9(req, status);
	return;

out_ctrl_put:
	FUNC7(ctrl);
	goto out;
}