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
typedef  int /*<<< orphan*/  u16 ;
struct nvme_queue {int /*<<< orphan*/  cq_poll_lock; } ;
struct blk_mq_hw_ctx {struct nvme_queue* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*) ; 
 int FUNC2 (struct nvme_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct blk_mq_hw_ctx *hctx)
{
	struct nvme_queue *nvmeq = hctx->driver_data;
	u16 start, end;
	bool found;

	if (!FUNC1(nvmeq))
		return 0;

	FUNC3(&nvmeq->cq_poll_lock);
	found = FUNC2(nvmeq, &start, &end, -1);
	FUNC4(&nvmeq->cq_poll_lock);

	FUNC0(nvmeq, start, end);
	return found;
}