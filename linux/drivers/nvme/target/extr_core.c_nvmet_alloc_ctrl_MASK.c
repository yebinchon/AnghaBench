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
typedef  int u16 ;
struct nvmet_subsys {scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrls; scalar_t__ max_qid; } ;
struct nvmet_sq {int dummy; } ;
struct nvmet_req {int /*<<< orphan*/  ops; int /*<<< orphan*/  port; TYPE_2__* cqe; } ;
struct nvmet_ctrl {int cntlid; struct nvmet_ctrl* changed_ns_list; struct nvmet_ctrl* cqs; struct nvmet_ctrl* sqs; int /*<<< orphan*/  subsys_entry; int /*<<< orphan*/  error_lock; scalar_t__ err_counter; int /*<<< orphan*/  kato; struct nvmet_subsys* subsys; int /*<<< orphan*/  ops; int /*<<< orphan*/  aen_enabled; int /*<<< orphan*/  ref; int /*<<< orphan*/  hostnqn; int /*<<< orphan*/  subsysnqn; int /*<<< orphan*/  fatal_err_work; int /*<<< orphan*/  p2p_ns_map; int /*<<< orphan*/  async_events; int /*<<< orphan*/  async_event_work; int /*<<< orphan*/  port; int /*<<< orphan*/  lock; } ;
struct nvmet_cq {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {void* u32; } ;
struct TYPE_4__ {TYPE_1__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  NVMET_AEN_CFG_OPTIONAL ; 
 int /*<<< orphan*/  NVMET_DISC_KATO_MS ; 
 int /*<<< orphan*/  NVME_CNTLID_MAX ; 
 int /*<<< orphan*/  NVME_CNTLID_MIN ; 
 int /*<<< orphan*/  NVME_MAX_CHANGED_NAMESPACES ; 
 scalar_t__ NVME_NQN_DISC ; 
 int NVME_SC_CONNECT_CTRL_BUSY ; 
 int NVME_SC_CONNECT_INVALID_HOST ; 
 int NVME_SC_CONNECT_INVALID_PARAM ; 
 int NVME_SC_DNR ; 
 int NVME_SC_INTERNAL ; 
 int /*<<< orphan*/  NVMF_NQN_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cntlid_ida ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvmet_ctrl*) ; 
 struct nvmet_ctrl* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct nvmet_ctrl* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_async_event_work ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 int /*<<< orphan*/  nvmet_fatal_error_handler ; 
 struct nvmet_subsys* FUNC18 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC19 (struct nvmet_subsys*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct nvmet_ctrl*) ; 
 int /*<<< orphan*/  FUNC21 (struct nvmet_ctrl*,struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC22 (struct nvmet_ctrl*) ; 
 int /*<<< orphan*/  FUNC23 (struct nvmet_subsys*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

u16 FUNC28(const char *subsysnqn, const char *hostnqn,
		struct nvmet_req *req, u32 kato, struct nvmet_ctrl **ctrlp)
{
	struct nvmet_subsys *subsys;
	struct nvmet_ctrl *ctrl;
	int ret;
	u16 status;

	status = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
	subsys = FUNC18(req->port, subsysnqn);
	if (!subsys) {
		FUNC25("connect request for invalid subsystem %s!\n",
			subsysnqn);
		req->cqe->result.u32 = FUNC4(subsysnqn);
		goto out;
	}

	status = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
	FUNC6(&nvmet_config_sem);
	if (!FUNC19(subsys, hostnqn)) {
		FUNC24("connect by host %s for subsystem %s not allowed\n",
			hostnqn, subsysnqn);
		req->cqe->result.u32 = FUNC4(hostnqn);
		FUNC27(&nvmet_config_sem);
		status = NVME_SC_CONNECT_INVALID_HOST | NVME_SC_DNR;
		goto out_put_subsystem;
	}
	FUNC27(&nvmet_config_sem);

	status = NVME_SC_INTERNAL;
	ctrl = FUNC12(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		goto out_put_subsystem;
	FUNC15(&ctrl->lock);

	FUNC20(ctrl);

	ctrl->port = req->port;

	FUNC3(&ctrl->async_event_work, nvmet_async_event_work);
	FUNC1(&ctrl->async_events);
	FUNC2(&ctrl->p2p_ns_map, GFP_KERNEL);
	FUNC3(&ctrl->fatal_err_work, nvmet_fatal_error_handler);

	FUNC14(ctrl->subsysnqn, subsysnqn, NVMF_NQN_SIZE);
	FUNC14(ctrl->hostnqn, hostnqn, NVMF_NQN_SIZE);

	FUNC11(&ctrl->ref);
	ctrl->subsys = subsys;
	FUNC5(ctrl->aen_enabled, NVMET_AEN_CFG_OPTIONAL);

	ctrl->changed_ns_list = FUNC10(NVME_MAX_CHANGED_NAMESPACES,
			sizeof(__le32), GFP_KERNEL);
	if (!ctrl->changed_ns_list)
		goto out_free_ctrl;

	ctrl->cqs = FUNC8(subsys->max_qid + 1,
			sizeof(struct nvmet_cq *),
			GFP_KERNEL);
	if (!ctrl->cqs)
		goto out_free_changed_ns_list;

	ctrl->sqs = FUNC8(subsys->max_qid + 1,
			sizeof(struct nvmet_sq *),
			GFP_KERNEL);
	if (!ctrl->sqs)
		goto out_free_cqs;

	ret = FUNC7(&cntlid_ida,
			     NVME_CNTLID_MIN, NVME_CNTLID_MAX,
			     GFP_KERNEL);
	if (ret < 0) {
		status = NVME_SC_CONNECT_CTRL_BUSY | NVME_SC_DNR;
		goto out_free_sqs;
	}
	ctrl->cntlid = ret;

	ctrl->ops = req->ops;

	/*
	 * Discovery controllers may use some arbitrary high value
	 * in order to cleanup stale discovery sessions
	 */
	if ((ctrl->subsys->type == NVME_NQN_DISC) && !kato)
		kato = NVMET_DISC_KATO_MS;

	/* keep-alive timeout in seconds */
	ctrl->kato = FUNC0(kato, 1000);

	ctrl->err_counter = 0;
	FUNC26(&ctrl->error_lock);

	FUNC22(ctrl);

	FUNC16(&subsys->lock);
	FUNC13(&ctrl->subsys_entry, &subsys->ctrls);
	FUNC21(ctrl, req);
	FUNC17(&subsys->lock);

	*ctrlp = ctrl;
	return 0;

out_free_sqs:
	FUNC9(ctrl->sqs);
out_free_cqs:
	FUNC9(ctrl->cqs);
out_free_changed_ns_list:
	FUNC9(ctrl->changed_ns_list);
out_free_ctrl:
	FUNC9(ctrl);
out_put_subsystem:
	FUNC23(subsys);
out:
	return status;
}