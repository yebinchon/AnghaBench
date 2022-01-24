#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct nvme_dsm_range {int dummy; } ;
struct nvme_ctrl_ops {int /*<<< orphan*/  module; } ;
struct TYPE_13__ {int /*<<< orphan*/  owner; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/  set_latency_tolerance; } ;
struct TYPE_18__ {TYPE_3__ kobj; TYPE_2__ power; int /*<<< orphan*/  release; int /*<<< orphan*/  groups; struct device* parent; int /*<<< orphan*/  class; int /*<<< orphan*/  devt; } ;
struct TYPE_14__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_17__ {TYPE_1__ common; } ;
struct nvme_ctrl {unsigned long quirks; int instance; scalar_t__ discard_page; TYPE_5__* device; int /*<<< orphan*/  fault_inject; TYPE_10__ cdev; struct device* dev; TYPE_5__ ctrl_device; TYPE_4__ ka_cmd; int /*<<< orphan*/  ka_work; int /*<<< orphan*/  state_wq; int /*<<< orphan*/  delete_work; int /*<<< orphan*/  fw_act_work; int /*<<< orphan*/  async_event_work; int /*<<< orphan*/  scan_work; struct nvme_ctrl_ops const* ops; int /*<<< orphan*/  namespaces_rwsem; int /*<<< orphan*/  namespaces; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NVME_CTRL_NEW ; 
 int NVME_DSM_MAX_RANGES ; 
 int PAGE_SIZE ; 
 scalar_t__ S32_MAX ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_10__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_ps_max_latency_us ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,struct nvme_ctrl*) ; 
 int FUNC13 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_admin_keep_alive ; 
 int /*<<< orphan*/  nvme_async_event_work ; 
 int /*<<< orphan*/  nvme_chr_devt ; 
 int /*<<< orphan*/  nvme_class ; 
 int /*<<< orphan*/  nvme_delete_ctrl_work ; 
 int /*<<< orphan*/  nvme_dev_attr_groups ; 
 int /*<<< orphan*/  nvme_dev_fops ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_free_ctrl ; 
 int /*<<< orphan*/  nvme_fw_act_work ; 
 int /*<<< orphan*/  nvme_instance_ida ; 
 int /*<<< orphan*/  nvme_keep_alive_work ; 
 int /*<<< orphan*/  nvme_scan_work ; 
 int /*<<< orphan*/  nvme_set_latency_tolerance ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int FUNC25(struct nvme_ctrl *ctrl, struct device *dev,
		const struct nvme_ctrl_ops *ops, unsigned long quirks)
{
	int ret;

	ctrl->state = NVME_CTRL_NEW;
	FUNC24(&ctrl->lock);
	FUNC22(&ctrl->scan_lock);
	FUNC2(&ctrl->namespaces);
	FUNC17(&ctrl->namespaces_rwsem);
	ctrl->dev = dev;
	ctrl->ops = ops;
	ctrl->quirks = quirks;
	FUNC3(&ctrl->scan_work, nvme_scan_work);
	FUNC3(&ctrl->async_event_work, nvme_async_event_work);
	FUNC3(&ctrl->fw_act_work, nvme_fw_act_work);
	FUNC3(&ctrl->delete_work, nvme_delete_ctrl_work);
	FUNC18(&ctrl->state_wq);

	FUNC1(&ctrl->ka_work, nvme_keep_alive_work);
	FUNC20(&ctrl->ka_cmd, 0, sizeof(ctrl->ka_cmd));
	ctrl->ka_cmd.common.opcode = nvme_admin_keep_alive;

	FUNC0(NVME_DSM_MAX_RANGES * sizeof(struct nvme_dsm_range) >
			PAGE_SIZE);
	ctrl->discard_page = FUNC7(GFP_KERNEL);
	if (!ctrl->discard_page) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC15(&nvme_instance_ida, 0, 0, GFP_KERNEL);
	if (ret < 0)
		goto out;
	ctrl->instance = ret;

	FUNC14(&ctrl->ctrl_device);
	ctrl->device = &ctrl->ctrl_device;
	ctrl->device->devt = FUNC5(FUNC4(nvme_chr_devt), ctrl->instance);
	ctrl->device->class = nvme_class;
	ctrl->device->parent = ctrl->dev;
	ctrl->device->groups = nvme_dev_attr_groups;
	ctrl->device->release = nvme_free_ctrl;
	FUNC12(ctrl->device, ctrl);
	ret = FUNC13(ctrl->device, "nvme%d", ctrl->instance);
	if (ret)
		goto out_release_instance;

	FUNC9(&ctrl->cdev, &nvme_dev_fops);
	ctrl->cdev.owner = ops->module;
	ret = FUNC8(&ctrl->cdev, ctrl->device);
	if (ret)
		goto out_free_name;

	/*
	 * Initialize latency tolerance controls.  The sysfs files won't
	 * be visible to userspace unless the device actually supports APST.
	 */
	ctrl->device->power.set_latency_tolerance = nvme_set_latency_tolerance;
	FUNC11(ctrl->device,
		FUNC21(default_ps_max_latency_us, (unsigned long)S32_MAX));

	FUNC23(&ctrl->fault_inject, FUNC10(ctrl->device));

	return 0;
out_free_name:
	FUNC19(ctrl->device->kobj.name);
out_release_instance:
	FUNC16(&nvme_instance_ida, ctrl->instance);
out:
	if (ctrl->discard_page)
		FUNC6(ctrl->discard_page);
	return ret;
}