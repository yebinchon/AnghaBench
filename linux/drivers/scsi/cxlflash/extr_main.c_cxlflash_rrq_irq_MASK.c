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
struct hwq {int /*<<< orphan*/  hrrq_slock; int /*<<< orphan*/  irqpoll; int /*<<< orphan*/  hrrq_online; struct afu* afu; } ;
struct afu {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct afu*) ; 
 int /*<<< orphan*/  doneq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hwq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct hwq *hwq = (struct hwq *)data;
	struct afu *afu = hwq->afu;
	unsigned long hrrq_flags;
	FUNC0(doneq);
	int num_entries = 0;

	FUNC5(&hwq->hrrq_slock, hrrq_flags);

	/* Silently drop spurious interrupts when queue is not online */
	if (!hwq->hrrq_online) {
		FUNC6(&hwq->hrrq_slock, hrrq_flags);
		return IRQ_HANDLED;
	}

	if (FUNC1(afu)) {
		FUNC2(&hwq->irqpoll);
		FUNC6(&hwq->hrrq_slock, hrrq_flags);
		return IRQ_HANDLED;
	}

	num_entries = FUNC4(hwq, &doneq, -1);
	FUNC6(&hwq->hrrq_slock, hrrq_flags);

	if (num_entries == 0)
		return IRQ_NONE;

	FUNC3(&doneq);
	return IRQ_HANDLED;
}