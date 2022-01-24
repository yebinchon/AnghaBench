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
typedef  scalar_t__ u8 ;
struct request {int dummy; } ;
struct nvme_tcp_request {struct nvme_tcp_queue* queue; int /*<<< orphan*/  pdu; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  pf_cache; } ;
struct blk_mq_tag_set {struct nvme_tcp_ctrl* driver_data; } ;
struct nvme_tcp_ctrl {int /*<<< orphan*/  ctrl; struct nvme_tcp_queue* queues; struct blk_mq_tag_set tag_set; } ;
struct nvme_tcp_cmd_pdu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 struct nvme_tcp_request* FUNC0 (struct request*) ; 
 TYPE_1__* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct blk_mq_tag_set *set,
		struct request *rq, unsigned int hctx_idx,
		unsigned int numa_node)
{
	struct nvme_tcp_ctrl *ctrl = set->driver_data;
	struct nvme_tcp_request *req = FUNC0(rq);
	int queue_idx = (set == &ctrl->tag_set) ? hctx_idx + 1 : 0;
	struct nvme_tcp_queue *queue = &ctrl->queues[queue_idx];
	u8 hdgst = FUNC2(queue);

	req->pdu = FUNC3(&queue->pf_cache,
		sizeof(struct nvme_tcp_cmd_pdu) + hdgst,
		GFP_KERNEL | __GFP_ZERO);
	if (!req->pdu)
		return -ENOMEM;

	req->queue = queue;
	FUNC1(rq)->ctrl = &ctrl->ctrl;

	return 0;
}