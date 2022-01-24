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
struct nvmf_ctrl_options {int mask; int /*<<< orphan*/  subsysnqn; int /*<<< orphan*/  duplicate_connect; int /*<<< orphan*/  host_traddr; int /*<<< orphan*/ * trsvcid; int /*<<< orphan*/  traddr; int /*<<< orphan*/  kato; scalar_t__ queue_size; scalar_t__ nr_poll_queues; scalar_t__ nr_write_queues; scalar_t__ nr_io_queues; } ;
struct nvme_ctrl {struct nvmf_ctrl_options* opts; int /*<<< orphan*/  device; scalar_t__ queue_count; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  kato; scalar_t__ sqsize; } ;
struct nvme_tcp_ctrl {struct nvme_tcp_ctrl* queues; struct nvme_ctrl ctrl; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  err_work; int /*<<< orphan*/  connect_work; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EALREADY ; 
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 struct nvme_ctrl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVME_CTRL_CONNECTING ; 
 int /*<<< orphan*/  NVME_TCP_DISC_PORT ; 
 int NVMF_OPT_HOST_TRADDR ; 
 int NVMF_OPT_TRSVCID ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 struct nvme_tcp_ctrl* FUNC8 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_tcp_ctrl*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nvme_tcp_ctrl* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_ctrl*) ; 
 int FUNC17 (struct nvme_ctrl*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  nvme_reset_ctrl_work ; 
 int /*<<< orphan*/  nvme_tcp_ctrl_list ; 
 int /*<<< orphan*/  nvme_tcp_ctrl_mutex ; 
 int /*<<< orphan*/  nvme_tcp_ctrl_ops ; 
 int /*<<< orphan*/  nvme_tcp_error_recovery_work ; 
 scalar_t__ FUNC19 (struct nvmf_ctrl_options*) ; 
 int /*<<< orphan*/  nvme_tcp_reconnect_ctrl_work ; 
 int FUNC20 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static struct nvme_ctrl *FUNC23(struct device *dev,
		struct nvmf_ctrl_options *opts)
{
	struct nvme_tcp_ctrl *ctrl;
	int ret;

	ctrl = FUNC11(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return FUNC0(-ENOMEM);

	FUNC2(&ctrl->list);
	ctrl->ctrl.opts = opts;
	ctrl->ctrl.queue_count = opts->nr_io_queues + opts->nr_write_queues +
				opts->nr_poll_queues + 1;
	ctrl->ctrl.sqsize = opts->queue_size - 1;
	ctrl->ctrl.kato = opts->kato;

	FUNC1(&ctrl->connect_work,
			nvme_tcp_reconnect_ctrl_work);
	FUNC3(&ctrl->err_work, nvme_tcp_error_recovery_work);
	FUNC3(&ctrl->ctrl.reset_work, nvme_reset_ctrl_work);

	if (!(opts->mask & NVMF_OPT_TRSVCID)) {
		opts->trsvcid =
			FUNC10(FUNC5(NVME_TCP_DISC_PORT), GFP_KERNEL);
		if (!opts->trsvcid) {
			ret = -ENOMEM;
			goto out_free_ctrl;
		}
		opts->mask |= NVMF_OPT_TRSVCID;
	}

	ret = FUNC7(&init_net, AF_UNSPEC,
			opts->traddr, opts->trsvcid, &ctrl->addr);
	if (ret) {
		FUNC22("malformed address passed: %s:%s\n",
			opts->traddr, opts->trsvcid);
		goto out_free_ctrl;
	}

	if (opts->mask & NVMF_OPT_HOST_TRADDR) {
		ret = FUNC7(&init_net, AF_UNSPEC,
			opts->host_traddr, NULL, &ctrl->src_addr);
		if (ret) {
			FUNC22("malformed src address passed: %s\n",
			       opts->host_traddr);
			goto out_free_ctrl;
		}
	}

	if (!opts->duplicate_connect && FUNC19(opts)) {
		ret = -EALREADY;
		goto out_free_ctrl;
	}

	ctrl->queues = FUNC8(ctrl->ctrl.queue_count, sizeof(*ctrl->queues),
				GFP_KERNEL);
	if (!ctrl->queues) {
		ret = -ENOMEM;
		goto out_free_ctrl;
	}

	ret = FUNC17(&ctrl->ctrl, dev, &nvme_tcp_ctrl_ops, 0);
	if (ret)
		goto out_kfree_queues;

	if (!FUNC15(&ctrl->ctrl, NVME_CTRL_CONNECTING)) {
		FUNC4(1);
		ret = -EINTR;
		goto out_uninit_ctrl;
	}

	ret = FUNC20(&ctrl->ctrl, true);
	if (ret)
		goto out_uninit_ctrl;

	FUNC6(ctrl->ctrl.device, "new ctrl: NQN \"%s\", addr %pISp\n",
		ctrl->ctrl.opts->subsysnqn, &ctrl->addr);

	FUNC16(&ctrl->ctrl);

	FUNC13(&nvme_tcp_ctrl_mutex);
	FUNC12(&ctrl->list, &nvme_tcp_ctrl_list);
	FUNC14(&nvme_tcp_ctrl_mutex);

	return &ctrl->ctrl;

out_uninit_ctrl:
	FUNC21(&ctrl->ctrl);
	FUNC18(&ctrl->ctrl);
	if (ret > 0)
		ret = -EIO;
	return FUNC0(ret);
out_kfree_queues:
	FUNC9(ctrl->queues);
out_free_ctrl:
	FUNC9(ctrl);
	return FUNC0(ret);
}