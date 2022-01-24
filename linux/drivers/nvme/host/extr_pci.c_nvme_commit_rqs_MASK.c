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
struct nvme_queue {scalar_t__ sq_tail; scalar_t__ last_sq_tail; int /*<<< orphan*/  sq_lock; } ;
struct blk_mq_hw_ctx {struct nvme_queue* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct blk_mq_hw_ctx *hctx)
{
	struct nvme_queue *nvmeq = hctx->driver_data;

	FUNC1(&nvmeq->sq_lock);
	if (nvmeq->sq_tail != nvmeq->last_sq_tail)
		FUNC0(nvmeq, true);
	FUNC2(&nvmeq->sq_lock);
}