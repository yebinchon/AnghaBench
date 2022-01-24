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
union nvme_result {int /*<<< orphan*/  u32; } ;
typedef  int /*<<< orphan*/  u16 ;
struct nvmf_connect_data {int /*<<< orphan*/  hostnqn; int /*<<< orphan*/  subsysnqn; void* cntlid; int /*<<< orphan*/  hostid; } ;
struct nvme_ctrl {int /*<<< orphan*/  connect_q; TYPE_3__* opts; int /*<<< orphan*/  cntlid; int /*<<< orphan*/  sqsize; } ;
struct TYPE_4__ {int /*<<< orphan*/  cattr; void* sqsize; void* qid; int /*<<< orphan*/  fctype; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ connect; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {TYPE_2__* host; int /*<<< orphan*/  subsysnqn; scalar_t__ disable_sqflow; } ;
struct TYPE_5__ {int /*<<< orphan*/  nqn; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BLK_MQ_REQ_NOWAIT ; 
 int BLK_MQ_REQ_RESERVED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_CONNECT_DISABLE_SQFLOW ; 
 int /*<<< orphan*/  NVMF_NQN_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct nvme_command*,union nvme_result*,struct nvmf_connect_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmf_connect_data*) ; 
 struct nvmf_connect_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_fabrics_command ; 
 int /*<<< orphan*/  nvme_fabrics_type_connect ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_ctrl*,int,int /*<<< orphan*/ ,struct nvme_command*,struct nvmf_connect_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(struct nvme_ctrl *ctrl, u16 qid, bool poll)
{
	struct nvme_command cmd;
	struct nvmf_connect_data *data;
	union nvme_result res;
	int ret;

	FUNC5(&cmd, 0, sizeof(cmd));
	cmd.connect.opcode = nvme_fabrics_command;
	cmd.connect.fctype = nvme_fabrics_type_connect;
	cmd.connect.qid = FUNC1(qid);
	cmd.connect.sqsize = FUNC1(ctrl->sqsize);

	if (ctrl->opts->disable_sqflow)
		cmd.connect.cattr |= NVME_CONNECT_DISABLE_SQFLOW;

	data = FUNC3(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(&data->hostid, &ctrl->opts->host->id);
	data->cntlid = FUNC1(ctrl->cntlid);
	FUNC7(data->subsysnqn, ctrl->opts->subsysnqn, NVMF_NQN_SIZE);
	FUNC7(data->hostnqn, ctrl->opts->host->nqn, NVMF_NQN_SIZE);

	ret = FUNC0(ctrl->connect_q, &cmd, &res,
			data, sizeof(*data), 0, qid, 1,
			BLK_MQ_REQ_RESERVED | BLK_MQ_REQ_NOWAIT, poll);
	if (ret) {
		FUNC6(ctrl, ret, FUNC4(res.u32),
				       &cmd, data);
	}
	FUNC2(data);
	return ret;
}