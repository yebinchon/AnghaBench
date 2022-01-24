#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct nvme_ns {int lba_shift; scalar_t__ ncap; int* vs; TYPE_5__* queue; int /*<<< orphan*/  head; int /*<<< orphan*/  siblings; struct gendisk* disk; int /*<<< orphan*/  fault_inject; int /*<<< orphan*/  list; int /*<<< orphan*/  kref; struct nvme_ctrl* ctrl; } ;
struct nvme_id_ns {int lba_shift; scalar_t__ ncap; int* vs; TYPE_5__* queue; int /*<<< orphan*/  head; int /*<<< orphan*/  siblings; struct gendisk* disk; int /*<<< orphan*/  fault_inject; int /*<<< orphan*/  list; int /*<<< orphan*/  kref; struct nvme_ctrl* ctrl; } ;
struct nvme_ctrl {int numa_node; int quirks; TYPE_4__* subsys; int /*<<< orphan*/  device; int /*<<< orphan*/  namespaces_rwsem; int /*<<< orphan*/  namespaces; TYPE_3__* ops; TYPE_1__* opts; int /*<<< orphan*/  tagset; } ;
struct gendisk {int flags; int /*<<< orphan*/  disk_name; TYPE_5__* queue; struct nvme_ns* private_data; int /*<<< orphan*/ * fops; } ;
struct TYPE_16__ {struct nvme_ns* queuedata; TYPE_2__* backing_dev_info; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  capabilities; } ;
struct TYPE_12__ {scalar_t__ data_digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_STABLE_WRITES ; 
 int DISK_NAME_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int NVME_F_PCI_P2PDMA ; 
 int NVME_QUIRK_LIGHTNVM ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  QUEUE_FLAG_PCI_P2PDMA ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*,struct nvme_ns*) ; 
 struct gendisk* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct nvme_ns* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_fops ; 
 int /*<<< orphan*/  FUNC22 (struct nvme_ctrl*) ; 
 int FUNC23 (struct nvme_ctrl*,unsigned int,struct nvme_ns**) ; 
 int FUNC24 (struct nvme_ns*,unsigned int,struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC25 (struct nvme_ns*,struct nvme_ns*) ; 
 int /*<<< orphan*/  nvme_ns_id_attr_groups ; 
 int FUNC26 (struct nvme_ns*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,struct nvme_ns*,struct nvme_ctrl*,int*) ; 
 int /*<<< orphan*/  FUNC29 (struct nvme_ctrl*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC30 (struct nvme_ctrl*,struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC31 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(struct nvme_ctrl *ctrl, unsigned nsid)
{
	struct nvme_ns *ns;
	struct gendisk *disk;
	struct nvme_id_ns *id;
	char disk_name[DISK_NAME_LEN];
	int node = ctrl->numa_node, flags = GENHD_FL_EXT_DEVT, ret;

	ns = FUNC14(sizeof(*ns), GFP_KERNEL, node);
	if (!ns)
		return -ENOMEM;

	ns->queue = FUNC5(ctrl->tagset);
	if (FUNC0(ns->queue)) {
		ret = FUNC1(ns->queue);
		goto out_free_ns;
	}

	if (ctrl->opts && ctrl->opts->data_digest)
		ns->queue->backing_dev_info->capabilities
			|= BDI_CAP_STABLE_WRITES;

	FUNC6(QUEUE_FLAG_NONROT, ns->queue);
	if (ctrl->ops->flags & NVME_F_PCI_P2PDMA)
		FUNC6(QUEUE_FLAG_PCI_P2PDMA, ns->queue);

	ns->queue->queuedata = ns;
	ns->ctrl = ctrl;

	FUNC13(&ns->kref);
	ns->lba_shift = 9; /* set to a default value for 512 until disk is validated */

	FUNC7(ns->queue, 1 << ns->lba_shift);
	FUNC29(ctrl, ns->queue);

	ret = FUNC23(ctrl, nsid, &id);
	if (ret)
		goto out_free_queue;

	if (id->ncap == 0) {
		ret = -EINVAL;
		goto out_free_id;
	}

	ret = FUNC24(ns, nsid, id);
	if (ret)
		goto out_free_id;
	FUNC30(ctrl, ns);
	FUNC28(disk_name, ns, ctrl, &flags);

	disk = FUNC3(0, node);
	if (!disk) {
		ret = -ENOMEM;
		goto out_unlink_ns;
	}

	disk->fops = &nvme_fops;
	disk->private_data = ns;
	disk->queue = ns->queue;
	disk->flags = flags;
	FUNC17(disk->disk_name, disk_name, DISK_NAME_LEN);
	ns->disk = disk;

	FUNC2(disk, id);

	if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
		ret = FUNC26(ns, disk_name, node);
		if (ret) {
			FUNC9(ctrl->device, "LightNVM init failure\n");
			goto out_put_disk;
		}
	}

	FUNC11(&ctrl->namespaces_rwsem);
	FUNC15(&ns->list, &ctrl->namespaces);
	FUNC32(&ctrl->namespaces_rwsem);

	FUNC22(ctrl);

	FUNC10(ctrl->device, ns->disk, nvme_ns_id_attr_groups);

	FUNC25(ns, id);
	FUNC21(&ns->fault_inject, ns->disk->disk_name);
	FUNC12(id);

	return 0;
 out_put_disk:
	FUNC31(ns->disk);
 out_unlink_ns:
	FUNC18(&ctrl->subsys->lock);
	FUNC16(&ns->siblings);
	FUNC19(&ctrl->subsys->lock);
	FUNC27(ns->head);
 out_free_id:
	FUNC12(id);
 out_free_queue:
	FUNC4(ns->queue);
 out_free_ns:
	FUNC12(ns);
	if (ret > 0)
		ret = FUNC8(FUNC20(ret));
	return ret;
}