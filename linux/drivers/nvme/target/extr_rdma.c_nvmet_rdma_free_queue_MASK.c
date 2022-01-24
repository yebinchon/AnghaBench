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
struct nvmet_rdma_queue {int /*<<< orphan*/  idx; int /*<<< orphan*/  host_qid; int /*<<< orphan*/  recv_queue_size; int /*<<< orphan*/  cmds; TYPE_1__* dev; int /*<<< orphan*/  nvme_sq; } ;
struct TYPE_2__ {int /*<<< orphan*/  srq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  nvmet_rdma_queue_ida ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nvmet_rdma_queue *queue)
{
	FUNC6("freeing queue %d\n", queue->idx);

	FUNC5(&queue->nvme_sq);

	FUNC2(queue);
	if (!queue->dev->srq) {
		FUNC3(queue->dev, queue->cmds,
				queue->recv_queue_size,
				!queue->host_qid);
	}
	FUNC4(queue);
	FUNC0(&nvmet_rdma_queue_ida, queue->idx);
	FUNC1(queue);
}