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
struct rdma_cm_id {int dummy; } ;
struct nvmet_rdma_queue {scalar_t__ state; int /*<<< orphan*/  release_work; int /*<<< orphan*/  idx; int /*<<< orphan*/  queue_list; } ;

/* Variables and functions */
 scalar_t__ NVMET_RDMA_Q_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_rdma_queue_mutex ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rdma_cm_id *cm_id,
		struct nvmet_rdma_queue *queue)
{
	FUNC0(queue->state != NVMET_RDMA_Q_CONNECTING);

	FUNC3(&nvmet_rdma_queue_mutex);
	if (!FUNC2(&queue->queue_list))
		FUNC1(&queue->queue_list);
	FUNC4(&nvmet_rdma_queue_mutex);

	FUNC5("failed to connect queue %d\n", queue->idx);
	FUNC6(&queue->release_work);
}