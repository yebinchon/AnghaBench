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
struct pvscsi_adapter {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; scalar_t__ use_msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *devp)
{
	struct pvscsi_adapter *adapter = devp;
	unsigned long flags;

	FUNC3(&adapter->hw_lock, flags);
	FUNC1(adapter);
	if (adapter->use_msg && FUNC0(adapter))
		FUNC2(adapter->workqueue, &adapter->work);
	FUNC4(&adapter->hw_lock, flags);

	return IRQ_HANDLED;
}