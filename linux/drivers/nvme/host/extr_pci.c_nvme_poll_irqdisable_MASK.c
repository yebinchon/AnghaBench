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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct nvme_queue {int /*<<< orphan*/  cq_vector; int /*<<< orphan*/  cq_poll_lock; int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_POLLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvme_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nvme_queue *nvmeq, unsigned int tag)
{
	struct pci_dev *pdev = FUNC8(nvmeq->dev->dev);
	u16 start, end;
	int found;

	/*
	 * For a poll queue we need to protect against the polling thread
	 * using the CQ lock.  For normal interrupt driven threads we have
	 * to disable the interrupt to avoid racing with it.
	 */
	if (FUNC7(NVMEQ_POLLED, &nvmeq->flags)) {
		FUNC5(&nvmeq->cq_poll_lock);
		found = FUNC3(nvmeq, &start, &end, tag);
		FUNC6(&nvmeq->cq_poll_lock);
	} else {
		FUNC0(FUNC4(pdev, nvmeq->cq_vector));
		found = FUNC3(nvmeq, &start, &end, tag);
		FUNC1(FUNC4(pdev, nvmeq->cq_vector));
	}

	FUNC2(nvmeq, start, end);
	return found;
}