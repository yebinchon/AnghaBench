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
struct nvme_ns_head {int instance; unsigned int ns_id; int /*<<< orphan*/  srcu; int /*<<< orphan*/  entry; int /*<<< orphan*/  ids; int /*<<< orphan*/  ref; TYPE_1__* subsys; int /*<<< orphan*/  list; } ;
struct nvme_ns {int dummy; } ;
struct nvme_id_ns {int dummy; } ;
struct nvme_ctrl {TYPE_1__* subsys; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns_ida; int /*<<< orphan*/  ref; int /*<<< orphan*/  nsheads; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nvme_ns_head* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,struct nvme_ns_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_ns_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct nvme_ns_head* FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct nvme_ctrl*,struct nvme_ns_head*) ; 
 int FUNC17 (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nvme_ns_head *FUNC18(struct nvme_ctrl *ctrl,
		unsigned nsid, struct nvme_id_ns *id)
{
	struct nvme_ns_head *head;
	size_t size = sizeof(*head);
	int ret = -ENOMEM;

#ifdef CONFIG_NVME_MULTIPATH
	size += num_possible_nodes() * sizeof(struct nvme_ns *);
#endif

	head = FUNC12(size, GFP_KERNEL);
	if (!head)
		goto out;
	ret = FUNC6(&ctrl->subsys->ns_ida, 1, 0, GFP_KERNEL);
	if (ret < 0)
		goto out_free_head;
	head->instance = ret;
	FUNC1(&head->list);
	ret = FUNC8(&head->srcu);
	if (ret)
		goto out_ida_remove;
	head->subsys = ctrl->subsys;
	head->ns_id = nsid;
	FUNC11(&head->ref);

	ret = FUNC17(ctrl, nsid, id, &head->ids);
	if (ret)
		goto out_cleanup_srcu;

	ret = FUNC2(ctrl->subsys, head);
	if (ret) {
		FUNC5(ctrl->device,
			"duplicate IDs for nsid %d\n", nsid);
		goto out_cleanup_srcu;
	}

	ret = FUNC16(ctrl, head);
	if (ret)
		goto out_cleanup_srcu;

	FUNC13(&head->entry, &ctrl->subsys->nsheads);

	FUNC10(&ctrl->subsys->ref);

	return head;
out_cleanup_srcu:
	FUNC4(&head->srcu);
out_ida_remove:
	FUNC7(&ctrl->subsys->ns_ida, head->instance);
out_free_head:
	FUNC9(head);
out:
	if (ret > 0)
		ret = FUNC3(FUNC15(ret));
	return FUNC0(ret);
}