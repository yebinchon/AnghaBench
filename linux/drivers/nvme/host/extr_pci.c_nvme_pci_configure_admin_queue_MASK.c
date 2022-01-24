#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvme_queue {int q_depth; int /*<<< orphan*/  flags; scalar_t__ cq_vector; int /*<<< orphan*/  cq_dma_addr; int /*<<< orphan*/  sq_dma_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  cap; } ;
struct nvme_dev {int /*<<< orphan*/  online_queues; TYPE_1__ ctrl; scalar_t__ bar; struct nvme_queue* queues; int /*<<< orphan*/  subsystem; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_ENABLED ; 
 int /*<<< orphan*/  NVME_AQ_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NVME_CSTS_NSSRO ; 
 scalar_t__ NVME_REG_ACQ ; 
 scalar_t__ NVME_REG_AQA ; 
 scalar_t__ NVME_REG_ASQ ; 
 scalar_t__ NVME_REG_CSTS ; 
 scalar_t__ NVME_REG_VS ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct nvme_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_queue*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nvme_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nvme_queue*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct nvme_dev *dev)
{
	int result;
	u32 aqa;
	struct nvme_queue *nvmeq;

	result = FUNC8(dev, FUNC2(dev, 0));
	if (result < 0)
		return result;

	dev->subsystem = FUNC10(dev->bar + NVME_REG_VS) >= FUNC1(1, 1, 0) ?
				FUNC0(dev->ctrl.cap) : 0;

	if (dev->subsystem &&
	    (FUNC10(dev->bar + NVME_REG_CSTS) & NVME_CSTS_NSSRO))
		FUNC12(NVME_CSTS_NSSRO, dev->bar + NVME_REG_CSTS);

	result = FUNC5(&dev->ctrl);
	if (result < 0)
		return result;

	result = FUNC4(dev, 0, NVME_AQ_DEPTH);
	if (result)
		return result;

	nvmeq = &dev->queues[0];
	aqa = nvmeq->q_depth - 1;
	aqa |= aqa << 16;

	FUNC12(aqa, dev->bar + NVME_REG_AQA);
	FUNC3(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
	FUNC3(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);

	result = FUNC6(&dev->ctrl);
	if (result)
		return result;

	nvmeq->cq_vector = 0;
	FUNC7(nvmeq, 0);
	result = FUNC9(nvmeq);
	if (result) {
		dev->online_queues--;
		return result;
	}

	FUNC11(NVMEQ_ENABLED, &nvmeq->flags);
	return result;
}