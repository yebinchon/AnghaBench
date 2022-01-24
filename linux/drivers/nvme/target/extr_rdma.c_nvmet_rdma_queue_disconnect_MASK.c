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
struct nvmet_rdma_queue {int /*<<< orphan*/  queue_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_rdma_queue_mutex ; 

__attribute__((used)) static void FUNC5(struct nvmet_rdma_queue *queue)
{
	bool disconnect = false;

	FUNC3(&nvmet_rdma_queue_mutex);
	if (!FUNC2(&queue->queue_list)) {
		FUNC1(&queue->queue_list);
		disconnect = true;
	}
	FUNC4(&nvmet_rdma_queue_mutex);

	if (disconnect)
		FUNC0(queue);
}