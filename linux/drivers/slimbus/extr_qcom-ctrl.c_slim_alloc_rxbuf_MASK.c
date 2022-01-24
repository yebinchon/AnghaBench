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
struct TYPE_2__ {int tail; int n; int head; void* base; int sl_sz; int /*<<< orphan*/  lock; } ;
struct qcom_slim_ctrl {TYPE_1__ rx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void *FUNC3(struct qcom_slim_ctrl *ctrl)
{
	unsigned long flags;
	int idx;

	FUNC1(&ctrl->rx.lock, flags);
	if ((ctrl->rx.tail + 1) % ctrl->rx.n == ctrl->rx.head) {
		FUNC2(&ctrl->rx.lock, flags);
		FUNC0(ctrl->dev, "RX QUEUE full!");
		return NULL;
	}
	idx = ctrl->rx.tail;
	ctrl->rx.tail = (ctrl->rx.tail + 1) % ctrl->rx.n;
	FUNC2(&ctrl->rx.lock, flags);

	return ctrl->rx.base + (idx * ctrl->rx.sl_sz);
}