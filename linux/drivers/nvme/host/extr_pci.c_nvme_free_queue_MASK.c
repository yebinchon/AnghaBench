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
struct nvme_queue {void* sq_cmds; int /*<<< orphan*/  sq_dma_addr; TYPE_1__* dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  cq_dma_addr; scalar_t__ cqes; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*) ; 
 int /*<<< orphan*/  NVMEQ_SQ_CMB ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nvme_queue *nvmeq)
{
	FUNC2(nvmeq->dev->dev, FUNC0(nvmeq),
				(void *)nvmeq->cqes, nvmeq->cq_dma_addr);
	if (!nvmeq->sq_cmds)
		return;

	if (FUNC4(NVMEQ_SQ_CMB, &nvmeq->flags)) {
		FUNC3(FUNC5(nvmeq->dev->dev),
				nvmeq->sq_cmds, FUNC1(nvmeq));
	} else {
		FUNC2(nvmeq->dev->dev, FUNC1(nvmeq),
				nvmeq->sq_cmds, nvmeq->sq_dma_addr);
	}
}