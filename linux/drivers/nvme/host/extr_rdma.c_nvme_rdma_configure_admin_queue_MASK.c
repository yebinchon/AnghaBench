#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int max_segments; int max_hw_sectors; void* admin_tagset; void* fabrics_q; void* admin_q; int /*<<< orphan*/  numa_node; } ;
struct nvme_rdma_ctrl {int max_fr_pages; TYPE_2__* queues; TYPE_6__ async_event_sqe; TYPE_1__* device; TYPE_7__ ctrl; int /*<<< orphan*/  admin_tag_set; } ;
struct nvme_command {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  dma_device; } ;
struct TYPE_13__ {TYPE_1__* device; } ;
struct TYPE_12__ {TYPE_3__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NVME_AQ_DEPTH ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_7__*) ; 
 int FUNC9 (TYPE_7__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nvme_rdma_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int FUNC16 (struct nvme_rdma_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC18(struct nvme_rdma_ctrl *ctrl,
		bool new)
{
	int error;

	error = FUNC11(ctrl, 0, NVME_AQ_DEPTH);
	if (error)
		return error;

	ctrl->device = ctrl->queues[0].device;
	ctrl->ctrl.numa_node = FUNC6(ctrl->device->dev->dma_device);

	ctrl->max_fr_pages = FUNC15(ctrl->device->dev);

	/*
	 * Bind the async event SQE DMA mapping to the admin queue lifetime.
	 * It's safe, since any chage in the underlying RDMA device will issue
	 * error recovery and queue re-creation.
	 */
	error = FUNC10(ctrl->device->dev, &ctrl->async_event_sqe,
			sizeof(struct nvme_command), DMA_TO_DEVICE);
	if (error)
		goto out_free_queue;

	if (new) {
		ctrl->ctrl.admin_tagset = FUNC12(&ctrl->ctrl, true);
		if (FUNC0(ctrl->ctrl.admin_tagset)) {
			error = FUNC1(ctrl->ctrl.admin_tagset);
			goto out_free_async_qe;
		}

		ctrl->ctrl.fabrics_q = FUNC4(&ctrl->admin_tag_set);
		if (FUNC0(ctrl->ctrl.fabrics_q)) {
			error = FUNC1(ctrl->ctrl.fabrics_q);
			goto out_free_tagset;
		}

		ctrl->ctrl.admin_q = FUNC4(&ctrl->admin_tag_set);
		if (FUNC0(ctrl->ctrl.admin_q)) {
			error = FUNC1(ctrl->ctrl.admin_q);
			goto out_cleanup_fabrics_q;
		}
	}

	error = FUNC16(ctrl, 0);
	if (error)
		goto out_cleanup_queue;

	error = FUNC8(&ctrl->ctrl);
	if (error)
		goto out_stop_queue;

	ctrl->ctrl.max_segments = ctrl->max_fr_pages;
	ctrl->ctrl.max_hw_sectors = ctrl->max_fr_pages << (FUNC7(SZ_4K) - 9);

	FUNC5(ctrl->ctrl.admin_q);

	error = FUNC9(&ctrl->ctrl);
	if (error)
		goto out_stop_queue;

	return 0;

out_stop_queue:
	FUNC17(&ctrl->queues[0]);
out_cleanup_queue:
	if (new)
		FUNC2(ctrl->ctrl.admin_q);
out_cleanup_fabrics_q:
	if (new)
		FUNC2(ctrl->ctrl.fabrics_q);
out_free_tagset:
	if (new)
		FUNC3(ctrl->ctrl.admin_tagset);
out_free_async_qe:
	FUNC13(ctrl->device->dev, &ctrl->async_event_sqe,
		sizeof(struct nvme_command), DMA_TO_DEVICE);
	ctrl->async_event_sqe.data = NULL;
out_free_queue:
	FUNC14(&ctrl->queues[0]);
	return error;
}