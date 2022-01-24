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
struct nvme_queue {int /*<<< orphan*/  cq_vector; TYPE_1__* dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  qid; } ;
struct TYPE_4__ {scalar_t__ admin_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; TYPE_2__ ctrl; int /*<<< orphan*/  online_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_ENABLED ; 
 int /*<<< orphan*/  NVMEQ_POLLED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nvme_queue *nvmeq)
{
	if (!FUNC3(NVMEQ_ENABLED, &nvmeq->flags))
		return 1;

	/* ensure that nvme_queue_rq() sees NVMEQ_ENABLED cleared */
	FUNC1();

	nvmeq->dev->online_queues--;
	if (!nvmeq->qid && nvmeq->dev->ctrl.admin_q)
		FUNC0(nvmeq->dev->ctrl.admin_q);
	if (!FUNC3(NVMEQ_POLLED, &nvmeq->flags))
		FUNC2(FUNC4(nvmeq->dev->dev), nvmeq->cq_vector, nvmeq);
	return 0;
}