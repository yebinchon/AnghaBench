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
struct nvme_ns {TYPE_1__* head; int /*<<< orphan*/  flags; struct nvme_ctrl* ctrl; } ;
struct nvme_id_ns {scalar_t__ ncap; } ;
struct nvme_ctrl {int /*<<< orphan*/  device; } ;
struct gendisk {struct nvme_ns* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns_id; int /*<<< orphan*/  ids; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NVME_NS_DEAD ; 
 int NVME_SC_DNR ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,struct nvme_id_ns*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_id_ns*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct nvme_ctrl*,int /*<<< orphan*/ ,struct nvme_id_ns**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct nvme_ns_ids*) ; 
 int FUNC7 (struct nvme_ctrl*,int /*<<< orphan*/ ,struct nvme_id_ns*,struct nvme_ns_ids*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct gendisk *disk)
{
	struct nvme_ns *ns = disk->private_data;
	struct nvme_ctrl *ctrl = ns->ctrl;
	struct nvme_id_ns *id;
	struct nvme_ns_ids ids;
	int ret = 0;

	if (FUNC9(NVME_NS_DEAD, &ns->flags)) {
		FUNC8(disk, 0);
		return -ENODEV;
	}

	ret = FUNC5(ctrl, ns->head->ns_id, &id);
	if (ret)
		goto out;

	if (id->ncap == 0) {
		ret = -ENODEV;
		goto free_id;
	}

	FUNC0(disk, id);
	ret = FUNC7(ctrl, ns->head->ns_id, id, &ids);
	if (ret)
		goto free_id;

	if (!FUNC6(&ns->head->ids, &ids)) {
		FUNC2(ctrl->device,
			"identifiers changed for nsid %d\n", ns->head->ns_id);
		ret = -ENODEV;
	}

free_id:
	FUNC3(id);
out:
	/*
	 * Only fail the function if we got a fatal error back from the
	 * device, otherwise ignore the error and just move on.
	 */
	if (ret == -ENOMEM || (ret > 0 && !(ret & NVME_SC_DNR)))
		ret = 0;
	else if (ret > 0)
		ret = FUNC1(FUNC4(ret));
	return ret;
}