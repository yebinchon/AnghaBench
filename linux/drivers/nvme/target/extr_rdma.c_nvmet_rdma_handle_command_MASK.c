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
typedef  scalar_t__ u16 ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct nvmet_rdma_rsp {int /*<<< orphan*/  req; int /*<<< orphan*/  wait_list; TYPE_4__ send_sge; TYPE_2__* cmd; } ;
struct nvmet_rdma_queue {int /*<<< orphan*/  rsp_wr_wait_lock; int /*<<< orphan*/  rsp_wr_wait_list; int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  nvme_cq; TYPE_3__* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__* sge; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_rdma_rsp*) ; 
 scalar_t__ FUNC3 (struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  nvmet_rdma_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct nvmet_rdma_queue *queue,
		struct nvmet_rdma_rsp *cmd)
{
	u16 status;

	FUNC0(queue->dev->device,
		cmd->cmd->sge[0].addr, cmd->cmd->sge[0].length,
		DMA_FROM_DEVICE);
	FUNC0(queue->dev->device,
		cmd->send_sge.addr, cmd->send_sge.length,
		DMA_TO_DEVICE);

	if (!FUNC5(&cmd->req, &queue->nvme_cq,
			&queue->nvme_sq, &nvmet_rdma_ops))
		return;

	status = FUNC3(cmd);
	if (status)
		goto out_err;

	if (FUNC8(!FUNC2(cmd))) {
		FUNC6(&queue->rsp_wr_wait_lock);
		FUNC1(&cmd->wait_list, &queue->rsp_wr_wait_list);
		FUNC7(&queue->rsp_wr_wait_lock);
	}

	return;

out_err:
	FUNC4(&cmd->req, status);
}