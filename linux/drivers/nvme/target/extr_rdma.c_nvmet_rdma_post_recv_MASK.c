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
struct nvmet_rdma_device {scalar_t__ srq; int /*<<< orphan*/  device; } ;
struct nvmet_rdma_cmd {int /*<<< orphan*/  wr; TYPE_2__* queue; TYPE_3__* sge; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__* cm_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct nvmet_rdma_device *ndev,
		struct nvmet_rdma_cmd *cmd)
{
	int ret;

	FUNC0(ndev->device,
		cmd->sge[0].addr, cmd->sge[0].length,
		DMA_FROM_DEVICE);

	if (ndev->srq)
		ret = FUNC2(ndev->srq, &cmd->wr, NULL);
	else
		ret = FUNC1(cmd->queue->cm_id->qp, &cmd->wr, NULL);

	if (FUNC4(ret))
		FUNC3("post_recv cmd failed\n");

	return ret;
}