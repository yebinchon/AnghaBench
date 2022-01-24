#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  limits; struct nvme_ns_head* queuedata; } ;
struct nvme_ns_head {int instance; TYPE_2__* disk; int /*<<< orphan*/  requeue_work; int /*<<< orphan*/  requeue_lock; int /*<<< orphan*/  requeue_list; int /*<<< orphan*/  lock; } ;
struct nvme_ctrl {int vwc; TYPE_1__* subsys; int /*<<< orphan*/  numa_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; struct request_queue* queue; struct nvme_ns_head* private_data; int /*<<< orphan*/ * fops; } ;
struct TYPE_3__ {int cmic; int instance; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NVME_CTRL_VWC_PRESENT ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  multipath ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_ns_head_make_request ; 
 int /*<<< orphan*/  nvme_ns_head_ops ; 
 int /*<<< orphan*/  nvme_requeue_work ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int) ; 

int FUNC13(struct nvme_ctrl *ctrl, struct nvme_ns_head *head)
{
	struct request_queue *q;
	bool vwc = false;

	FUNC10(&head->lock);
	FUNC2(&head->requeue_list);
	FUNC11(&head->requeue_lock);
	FUNC0(&head->requeue_work, nvme_requeue_work);

	/*
	 * Add a multipath node if the subsystems supports multiple controllers.
	 * We also do this for private namespaces as the namespace sharing data could
	 * change after a rescan.
	 */
	if (!(ctrl->subsys->cmic & (1 << 1)) || !multipath)
		return 0;

	q = FUNC3(GFP_KERNEL, ctrl->numa_node);
	if (!q)
		goto out;
	q->queuedata = head;
	FUNC7(q, nvme_ns_head_make_request);
	FUNC5(QUEUE_FLAG_NONROT, q);
	/* set to a default value for 512 until disk is validated */
	FUNC6(q, 512);
	FUNC9(&q->limits);

	/* we need to propagate up the VMC settings */
	if (ctrl->vwc & NVME_CTRL_VWC_PRESENT)
		vwc = true;
	FUNC8(q, vwc, vwc);

	head->disk = FUNC1(0);
	if (!head->disk)
		goto out_cleanup_queue;
	head->disk->fops = &nvme_ns_head_ops;
	head->disk->private_data = head;
	head->disk->queue = q;
	head->disk->flags = GENHD_FL_EXT_DEVT;
	FUNC12(head->disk->disk_name, "nvme%dn%d",
			ctrl->subsys->instance, head->instance);
	return 0;

out_cleanup_queue:
	FUNC4(q);
out:
	return -ENOMEM;
}