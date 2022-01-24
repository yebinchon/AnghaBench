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
struct nvme_queue {int dummy; } ;
struct nvme_dev {int /*<<< orphan*/  ctrl; struct nvme_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nvme_dev *dev, bool shutdown)
{
	struct nvme_queue *nvmeq = &dev->queues[0];

	if (shutdown)
		FUNC2(&dev->ctrl);
	else
		FUNC0(&dev->ctrl);

	FUNC1(nvmeq, -1);
}