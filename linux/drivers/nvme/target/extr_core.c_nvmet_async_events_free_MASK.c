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
struct nvmet_req {int dummy; } ;
struct nvmet_ctrl {size_t nr_async_event_cmds; int /*<<< orphan*/  lock; struct nvmet_req** async_event_cmds; } ;

/* Variables and functions */
 int NVME_SC_DNR ; 
 int NVME_SC_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_req*,int) ; 

__attribute__((used)) static void FUNC3(struct nvmet_ctrl *ctrl)
{
	struct nvmet_req *req;

	while (1) {
		FUNC0(&ctrl->lock);
		if (!ctrl->nr_async_event_cmds) {
			FUNC1(&ctrl->lock);
			return;
		}

		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
		FUNC1(&ctrl->lock);
		FUNC2(req, NVME_SC_INTERNAL | NVME_SC_DNR);
	}
}