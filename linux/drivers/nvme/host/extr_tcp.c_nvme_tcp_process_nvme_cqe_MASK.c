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
struct request {int dummy; } ;
struct nvme_tcp_queue {int /*<<< orphan*/  nr_cqe; TYPE_1__* ctrl; } ;
struct nvme_completion {int /*<<< orphan*/  result; int /*<<< orphan*/  status; int /*<<< orphan*/  command_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 struct request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_tcp_queue*) ; 

__attribute__((used)) static int FUNC6(struct nvme_tcp_queue *queue,
		struct nvme_completion *cqe)
{
	struct request *rq;

	rq = FUNC0(FUNC5(queue), cqe->command_id);
	if (!rq) {
		FUNC1(queue->ctrl->ctrl.device,
			"queue %d tag 0x%x not found\n",
			FUNC4(queue), cqe->command_id);
		FUNC3(&queue->ctrl->ctrl);
		return -EINVAL;
	}

	FUNC2(rq, cqe->status, cqe->result);
	queue->nr_cqe++;

	return 0;
}