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
struct nvme_ctrl {unsigned int queue_count; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (struct nvme_ctrl*,unsigned int*) ; 
 unsigned int FUNC3 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct nvme_ctrl *ctrl)
{
	unsigned int nr_io_queues;
	int ret;

	nr_io_queues = FUNC3(ctrl);
	ret = FUNC2(ctrl, &nr_io_queues);
	if (ret)
		return ret;

	ctrl->queue_count = nr_io_queues + 1;
	if (ctrl->queue_count < 2)
		return 0;

	FUNC1(ctrl->device,
		"creating %d I/O queues.\n", nr_io_queues);

	FUNC4(ctrl, nr_io_queues);

	return FUNC0(ctrl);
}