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
struct nvme_id_ctrl {int /*<<< orphan*/  anagrpmax; int /*<<< orphan*/  nanagrpid; int /*<<< orphan*/  anatt; int /*<<< orphan*/  anacap; } ;
struct nvme_ctrl {int nanagrpid; int ana_log_size; int max_namespaces; int max_hw_sectors; int /*<<< orphan*/ * ana_log_buf; int /*<<< orphan*/  ana_work; int /*<<< orphan*/  device; int /*<<< orphan*/  anatt_timer; int /*<<< orphan*/  ana_lock; void* anagrpmax; int /*<<< orphan*/  anatt; int /*<<< orphan*/  anacap; TYPE_1__* subsys; } ;
struct nvme_ana_rsp_hdr {int dummy; } ;
struct nvme_ana_group_desc {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int cmic; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multipath ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_ana_work ; 
 int /*<<< orphan*/  nvme_anatt_timeout ; 
 int FUNC6 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
{
	int error;

	/* check if multipath is enabled and we have the capability */
	if (!multipath || !ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
		return 0;

	ctrl->anacap = id->anacap;
	ctrl->anatt = id->anatt;
	ctrl->nanagrpid = FUNC4(id->nanagrpid);
	ctrl->anagrpmax = FUNC4(id->anagrpmax);

	FUNC5(&ctrl->ana_lock);
	FUNC7(&ctrl->anatt_timer, nvme_anatt_timeout, 0);
	ctrl->ana_log_size = sizeof(struct nvme_ana_rsp_hdr) +
		ctrl->nanagrpid * sizeof(struct nvme_ana_group_desc);
	ctrl->ana_log_size += ctrl->max_namespaces * sizeof(__le32);

	if (ctrl->ana_log_size > ctrl->max_hw_sectors << SECTOR_SHIFT) {
		FUNC1(ctrl->device,
			"ANA log page size (%zd) larger than MDTS (%d).\n",
			ctrl->ana_log_size,
			ctrl->max_hw_sectors << SECTOR_SHIFT);
		FUNC1(ctrl->device, "disabling ANA support.\n");
		return 0;
	}

	FUNC0(&ctrl->ana_work, nvme_ana_work);
	ctrl->ana_log_buf = FUNC3(ctrl->ana_log_size, GFP_KERNEL);
	if (!ctrl->ana_log_buf) {
		error = -ENOMEM;
		goto out;
	}

	error = FUNC6(ctrl);
	if (error)
		goto out_free_ana_log_buf;
	return 0;
out_free_ana_log_buf:
	FUNC2(ctrl->ana_log_buf);
	ctrl->ana_log_buf = NULL;
out:
	return error;
}