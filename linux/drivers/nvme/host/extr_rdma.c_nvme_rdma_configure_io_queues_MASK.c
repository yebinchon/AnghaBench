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
struct TYPE_2__ {int /*<<< orphan*/  tagset; int /*<<< orphan*/  connect_q; scalar_t__ queue_count; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int /*<<< orphan*/  tag_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (struct nvme_rdma_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_rdma_ctrl*) ; 
 int FUNC9 (struct nvme_rdma_ctrl*) ; 

__attribute__((used)) static int FUNC10(struct nvme_rdma_ctrl *ctrl, bool new)
{
	int ret;

	ret = FUNC6(ctrl);
	if (ret)
		return ret;

	if (new) {
		ctrl->ctrl.tagset = FUNC7(&ctrl->ctrl, false);
		if (FUNC0(ctrl->ctrl.tagset)) {
			ret = FUNC1(ctrl->ctrl.tagset);
			goto out_free_io_queues;
		}

		ctrl->ctrl.connect_q = FUNC4(&ctrl->tag_set);
		if (FUNC0(ctrl->ctrl.connect_q)) {
			ret = FUNC1(ctrl->ctrl.connect_q);
			goto out_free_tag_set;
		}
	} else {
		FUNC5(&ctrl->tag_set,
			ctrl->ctrl.queue_count - 1);
	}

	ret = FUNC9(ctrl);
	if (ret)
		goto out_cleanup_connect_q;

	return 0;

out_cleanup_connect_q:
	if (new)
		FUNC2(ctrl->ctrl.connect_q);
out_free_tag_set:
	if (new)
		FUNC3(ctrl->ctrl.tagset);
out_free_io_queues:
	FUNC8(ctrl);
	return ret;
}