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
struct nvme_rdma_queue {int dummy; } ;
struct nvme_rdma_ctrl {struct nvme_rdma_queue* queues; } ;
struct blk_mq_hw_ctx {struct nvme_rdma_queue* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct blk_mq_hw_ctx *hctx, void *data,
		unsigned int hctx_idx)
{
	struct nvme_rdma_ctrl *ctrl = data;
	struct nvme_rdma_queue *queue = &ctrl->queues[0];

	FUNC0(hctx_idx != 0);

	hctx->driver_data = queue;
	return 0;
}