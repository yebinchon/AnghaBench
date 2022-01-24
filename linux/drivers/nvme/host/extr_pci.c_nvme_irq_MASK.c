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
typedef  scalar_t__ u16 ;
struct nvme_queue {scalar_t__ cq_head; scalar_t__ last_cq_head; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct nvme_queue *nvmeq = data;
	irqreturn_t ret = IRQ_NONE;
	u16 start, end;

	/*
	 * The rmb/wmb pair ensures we see all updates from a previous run of
	 * the irq handler, even if that was on another CPU.
	 */
	FUNC2();
	if (nvmeq->cq_head != nvmeq->last_cq_head)
		ret = IRQ_HANDLED;
	FUNC1(nvmeq, &start, &end, -1);
	nvmeq->last_cq_head = nvmeq->cq_head;
	FUNC3();

	if (start != end) {
		FUNC0(nvmeq, start, end);
		return IRQ_HANDLED;
	}

	return ret;
}