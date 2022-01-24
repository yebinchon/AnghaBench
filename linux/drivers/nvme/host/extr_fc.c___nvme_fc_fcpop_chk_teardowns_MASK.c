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
struct nvme_fc_fcp_op {int dummy; } ;
struct nvme_fc_ctrl {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  ioabort_wait; int /*<<< orphan*/  iocnt; } ;

/* Variables and functions */
 int FCCTRL_TERMIO ; 
 int FCPOP_STATE_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct nvme_fc_ctrl *ctrl,
		struct nvme_fc_fcp_op *op, int opstate)
{
	unsigned long flags;

	if (opstate == FCPOP_STATE_ABORTED) {
		FUNC0(&ctrl->lock, flags);
		if (ctrl->flags & FCCTRL_TERMIO) {
			if (!--ctrl->iocnt)
				FUNC2(&ctrl->ioabort_wait);
		}
		FUNC1(&ctrl->lock, flags);
	}
}