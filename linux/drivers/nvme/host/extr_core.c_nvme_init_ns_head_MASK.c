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
struct nvme_ns_ids {int dummy; } ;
struct nvme_ns_head {int /*<<< orphan*/  list; int /*<<< orphan*/  ids; } ;
struct nvme_ns {struct nvme_ns_head* head; int /*<<< orphan*/  siblings; struct nvme_ctrl* ctrl; } ;
struct nvme_id_ns {int nmic; } ;
struct nvme_ctrl {TYPE_1__* subsys; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nvme_ns_head*) ; 
 int FUNC1 (struct nvme_ns_head*) ; 
 struct nvme_ns_head* FUNC2 (TYPE_1__*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct nvme_ns_head* FUNC8 (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct nvme_ns_ids*) ; 
 int FUNC11 (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*,struct nvme_ns_ids*) ; 

__attribute__((used)) static int FUNC12(struct nvme_ns *ns, unsigned nsid,
		struct nvme_id_ns *id)
{
	struct nvme_ctrl *ctrl = ns->ctrl;
	bool is_shared = id->nmic & (1 << 0);
	struct nvme_ns_head *head = NULL;
	int ret = 0;

	FUNC6(&ctrl->subsys->lock);
	if (is_shared)
		head = FUNC2(ctrl->subsys, nsid);
	if (!head) {
		head = FUNC8(ctrl, nsid, id);
		if (FUNC0(head)) {
			ret = FUNC1(head);
			goto out_unlock;
		}
	} else {
		struct nvme_ns_ids ids;

		ret = FUNC11(ctrl, nsid, id, &ids);
		if (ret)
			goto out_unlock;

		if (!FUNC10(&head->ids, &ids)) {
			FUNC4(ctrl->device,
				"IDs don't match for shared namespace %d\n",
					nsid);
			ret = -EINVAL;
			goto out_unlock;
		}
	}

	FUNC5(&ns->siblings, &head->list);
	ns->head = head;

out_unlock:
	FUNC7(&ctrl->subsys->lock);
	if (ret > 0)
		ret = FUNC3(FUNC9(ret));
	return ret;
}