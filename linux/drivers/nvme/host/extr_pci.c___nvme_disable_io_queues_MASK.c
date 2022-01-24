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
typedef  int /*<<< orphan*/  u8 ;
struct nvme_queue {int /*<<< orphan*/  flags; int /*<<< orphan*/  delete_done; } ;
struct nvme_dev {int online_queues; struct nvme_queue* queues; } ;

/* Variables and functions */
 unsigned long ADMIN_TIMEOUT ; 
 int /*<<< orphan*/  NVMEQ_DELETE_ERROR ; 
 int /*<<< orphan*/  nvme_admin_delete_cq ; 
 scalar_t__ FUNC0 (struct nvme_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct nvme_dev *dev, u8 opcode)
{
	int nr_queues = dev->online_queues - 1, sent = 0;
	unsigned long timeout;

 retry:
	timeout = ADMIN_TIMEOUT;
	while (nr_queues > 0) {
		if (FUNC0(&dev->queues[nr_queues], opcode))
			break;
		nr_queues--;
		sent++;
	}
	while (sent) {
		struct nvme_queue *nvmeq = &dev->queues[nr_queues + sent];

		timeout = FUNC3(&nvmeq->delete_done,
				timeout);
		if (timeout == 0)
			return false;

		/* handle any remaining CQEs */
		if (opcode == nvme_admin_delete_cq &&
		    !FUNC2(NVMEQ_DELETE_ERROR, &nvmeq->flags))
			FUNC1(nvmeq, -1);

		sent--;
		if (nr_queues)
			goto retry;
	}
	return true;
}