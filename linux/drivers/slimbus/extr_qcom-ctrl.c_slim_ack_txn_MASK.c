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
struct TYPE_2__ {int head; int n; int /*<<< orphan*/  lock; } ;
struct qcom_slim_ctrl {struct completion** wr_comp; TYPE_1__ tx; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct qcom_slim_ctrl *ctrl, int err)
{
	struct completion *comp;
	unsigned long flags;
	int idx;

	FUNC1(&ctrl->tx.lock, flags);
	idx = ctrl->tx.head;
	ctrl->tx.head = (ctrl->tx.head + 1) % ctrl->tx.n;
	FUNC2(&ctrl->tx.lock, flags);

	comp = ctrl->wr_comp[idx];
	ctrl->wr_comp[idx] = NULL;

	FUNC0(comp);
}