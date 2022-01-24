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
struct slim_msg_txn {int dummy; } ;
struct TYPE_2__ {int head; int n; int tail; void* base; int sl_sz; int /*<<< orphan*/  lock; } ;
struct qcom_slim_ctrl {TYPE_1__ tx; struct completion** wr_comp; int /*<<< orphan*/  dev; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void *FUNC3(struct qcom_slim_ctrl *ctrl,
			      struct slim_msg_txn *txn,
			      struct completion *done)
{
	unsigned long flags;
	int idx;

	FUNC1(&ctrl->tx.lock, flags);
	if (((ctrl->tx.head + 1) % ctrl->tx.n) == ctrl->tx.tail) {
		FUNC2(&ctrl->tx.lock, flags);
		FUNC0(ctrl->dev, "controller TX buf unavailable");
		return NULL;
	}
	idx = ctrl->tx.tail;
	ctrl->wr_comp[idx] = done;
	ctrl->tx.tail = (ctrl->tx.tail + 1) % ctrl->tx.n;

	FUNC2(&ctrl->tx.lock, flags);

	return ctrl->tx.base + (idx * ctrl->tx.sl_sz);
}