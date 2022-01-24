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
struct rdma_cm_id {int /*<<< orphan*/  context; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct rdma_cm_event {TYPE_1__ param; } ;
struct nvmet_rdma_queue {scalar_t__ host_qid; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  release_work; int /*<<< orphan*/  port; } ;
struct nvmet_rdma_device {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NVME_RDMA_CM_NO_RSC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nvmet_rdma_queue* FUNC5 (struct nvmet_rdma_device*,struct rdma_cm_id*,struct rdma_cm_event*) ; 
 int FUNC6 (struct rdma_cm_id*,struct nvmet_rdma_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 struct nvmet_rdma_device* FUNC8 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  nvmet_rdma_free_dev ; 
 int /*<<< orphan*/  nvmet_rdma_queue_list ; 
 int /*<<< orphan*/  nvmet_rdma_queue_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rdma_cm_id *cm_id,
		struct rdma_cm_event *event)
{
	struct nvmet_rdma_device *ndev;
	struct nvmet_rdma_queue *queue;
	int ret = -EINVAL;

	ndev = FUNC8(cm_id);
	if (!ndev) {
		FUNC7(cm_id, NVME_RDMA_CM_NO_RSC);
		return -ECONNREFUSED;
	}

	queue = FUNC5(ndev, cm_id, event);
	if (!queue) {
		ret = -ENOMEM;
		goto put_device;
	}
	queue->port = cm_id->context;

	if (queue->host_qid == 0) {
		/* Let inflight controller teardown complete */
		FUNC0();
	}

	ret = FUNC6(cm_id, queue, &event->param.conn);
	if (ret) {
		FUNC9(&queue->release_work);
		/* Destroying rdma_cm id is not needed here */
		return 0;
	}

	FUNC3(&nvmet_rdma_queue_mutex);
	FUNC2(&queue->queue_list, &nvmet_rdma_queue_list);
	FUNC4(&nvmet_rdma_queue_mutex);

	return 0;

put_device:
	FUNC1(&ndev->ref, nvmet_rdma_free_dev);

	return ret;
}