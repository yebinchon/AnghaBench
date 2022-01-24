#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  groups; int /*<<< orphan*/  release; int /*<<< orphan*/  class; } ;
struct nvme_subsystem {int instance; int /*<<< orphan*/  ctrls; TYPE_1__ dev; int /*<<< orphan*/  entry; int /*<<< orphan*/  ns_ida; int /*<<< orphan*/  subnqn; int /*<<< orphan*/  iopolicy; void* awupf; int /*<<< orphan*/  cmic; void* vendor_id; int /*<<< orphan*/  firmware_rev; int /*<<< orphan*/  model; int /*<<< orphan*/  serial; int /*<<< orphan*/  nsheads; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
struct nvme_id_ctrl {int /*<<< orphan*/  awupf; int /*<<< orphan*/  cmic; int /*<<< orphan*/  vid; int /*<<< orphan*/  fr; int /*<<< orphan*/  mn; int /*<<< orphan*/  sn; } ;
struct nvme_ctrl {int instance; int /*<<< orphan*/  subsys_entry; struct nvme_subsystem* subsys; TYPE_5__* device; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NVME_IOPOLICY_NUMA ; 
 struct nvme_subsystem* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct nvme_subsystem* FUNC9 (int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_subsystem*,struct nvme_ctrl*,struct nvme_id_ctrl*) ; 
 int /*<<< orphan*/  FUNC17 (struct nvme_subsystem*) ; 
 int /*<<< orphan*/  nvme_release_subsystem ; 
 int /*<<< orphan*/  nvme_subsys_attrs_groups ; 
 int /*<<< orphan*/  nvme_subsys_class ; 
 int /*<<< orphan*/  nvme_subsystems ; 
 int /*<<< orphan*/  nvme_subsystems_lock ; 
 int /*<<< orphan*/  FUNC18 (struct nvme_subsystem*,struct nvme_ctrl*,struct nvme_id_ctrl*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
{
	struct nvme_subsystem *subsys, *found;
	int ret;

	subsys = FUNC9(sizeof(*subsys), GFP_KERNEL);
	if (!subsys)
		return -ENOMEM;

	subsys->instance = -1;
	FUNC13(&subsys->lock);
	FUNC8(&subsys->ref);
	FUNC0(&subsys->ctrls);
	FUNC0(&subsys->nsheads);
	FUNC16(subsys, ctrl, id);
	FUNC12(subsys->serial, id->sn, sizeof(subsys->serial));
	FUNC12(subsys->model, id->mn, sizeof(subsys->model));
	FUNC12(subsys->firmware_rev, id->fr, sizeof(subsys->firmware_rev));
	subsys->vendor_id = FUNC10(id->vid);
	subsys->cmic = id->cmic;
	subsys->awupf = FUNC10(id->awupf);
#ifdef CONFIG_NVME_MULTIPATH
	subsys->iopolicy = NVME_IOPOLICY_NUMA;
#endif

	subsys->dev.class = nvme_subsys_class;
	subsys->dev.release = nvme_release_subsystem;
	subsys->dev.groups = nvme_subsys_attrs_groups;
	FUNC4(&subsys->dev, "nvme-subsys%d", ctrl->instance);
	FUNC6(&subsys->dev);

	FUNC14(&nvme_subsystems_lock);
	found = FUNC1(subsys->subnqn);
	if (found) {
		FUNC19(&subsys->dev);
		subsys = found;

		if (!FUNC18(subsys, ctrl, id)) {
			ret = -EINVAL;
			goto out_put_subsystem;
		}
	} else {
		ret = FUNC5(&subsys->dev);
		if (ret) {
			FUNC2(ctrl->device,
				"failed to register subsystem device.\n");
			FUNC19(&subsys->dev);
			goto out_unlock;
		}
		FUNC7(&subsys->ns_ida);
		FUNC11(&subsys->entry, &nvme_subsystems);
	}

	ret = FUNC20(&subsys->dev.kobj, &ctrl->device->kobj,
				FUNC3(ctrl->device));
	if (ret) {
		FUNC2(ctrl->device,
			"failed to create sysfs link from subsystem.\n");
		goto out_put_subsystem;
	}

	if (!found)
		subsys->instance = ctrl->instance;
	ctrl->subsys = subsys;
	FUNC11(&ctrl->subsys_entry, &subsys->ctrls);
	FUNC15(&nvme_subsystems_lock);
	return 0;

out_put_subsystem:
	FUNC17(subsys);
out_unlock:
	FUNC15(&nvme_subsystems_lock);
	return ret;
}