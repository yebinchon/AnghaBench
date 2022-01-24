#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct request {int dummy; } ;
struct nvme_queue {scalar_t__ q_depth; scalar_t__ qid; int /*<<< orphan*/  sq_tail; int /*<<< orphan*/ * tags; TYPE_1__* dev; struct nvme_completion* cqes; } ;
struct nvme_completion {scalar_t__ command_id; int /*<<< orphan*/  result; int /*<<< orphan*/  status; int /*<<< orphan*/  sq_head; int /*<<< orphan*/  sq_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;

/* Variables and functions */
 scalar_t__ NVME_AQ_BLK_MQ_DEPTH ; 
 struct request* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline void FUNC7(struct nvme_queue *nvmeq, u16 idx)
{
	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
	struct request *req;

	if (FUNC6(cqe->command_id >= nvmeq->q_depth)) {
		FUNC1(nvmeq->dev->ctrl.device,
			"invalid id %d completed on queue %d\n",
			cqe->command_id, FUNC2(cqe->sq_id));
		return;
	}

	/*
	 * AEN requests are special as they don't time out and can
	 * survive any kind of queue freeze and often don't respond to
	 * aborts.  We don't even bother to allocate a struct request
	 * for them but rather special case them here.
	 */
	if (FUNC6(nvmeq->qid == 0 &&
			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
		FUNC3(&nvmeq->dev->ctrl,
				cqe->status, &cqe->result);
		return;
	}

	req = FUNC0(*nvmeq->tags, cqe->command_id);
	FUNC5(req, cqe->sq_head, nvmeq->sq_tail);
	FUNC4(req, cqe->status, cqe->result);
}