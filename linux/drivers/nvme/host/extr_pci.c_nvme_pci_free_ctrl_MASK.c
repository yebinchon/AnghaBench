#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  opal_dev; scalar_t__ admin_q; } ;
struct nvme_dev {int /*<<< orphan*/  iod_mempool; TYPE_1__ ctrl; struct nvme_dev* queues; int /*<<< orphan*/  dev; } ;
struct nvme_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct nvme_dev* FUNC7 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC8(struct nvme_ctrl *ctrl)
{
	struct nvme_dev *dev = FUNC7(ctrl);

	FUNC4(dev);
	FUNC6(dev->dev);
	FUNC5(dev);
	if (dev->ctrl.admin_q)
		FUNC0(dev->ctrl.admin_q);
	FUNC2(dev->queues);
	FUNC1(dev->ctrl.opal_dev);
	FUNC3(dev->iod_mempool);
	FUNC2(dev);
}