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
struct nvme_rdma_queue {int /*<<< orphan*/  cm_id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_RDMA_Q_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nvme_rdma_queue *queue)
{
	if (!FUNC2(NVME_RDMA_Q_ALLOCATED, &queue->flags))
		return;

	FUNC0(queue);
	FUNC1(queue->cm_id);
}