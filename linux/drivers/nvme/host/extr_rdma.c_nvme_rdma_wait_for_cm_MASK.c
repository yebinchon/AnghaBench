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
struct nvme_rdma_queue {scalar_t__ cm_error; int /*<<< orphan*/  cm_done; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NVME_RDMA_CONNECT_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct nvme_rdma_queue *queue)
{
	int ret;

	ret = FUNC2(&queue->cm_done,
			FUNC1(NVME_RDMA_CONNECT_TIMEOUT_MS) + 1);
	if (ret < 0)
		return ret;
	if (ret == 0)
		return -ETIMEDOUT;
	FUNC0(queue->cm_error > 0);
	return queue->cm_error;
}