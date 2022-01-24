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
struct rdma_cm_id {struct nvme_rdma_queue* context; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; } ;
struct nvme_rdma_queue {int cm_error; int /*<<< orphan*/  cm_done; TYPE_2__* ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int ECONNRESET ; 
#define  RDMA_CM_EVENT_ADDR_CHANGE 139 
#define  RDMA_CM_EVENT_ADDR_ERROR 138 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 137 
#define  RDMA_CM_EVENT_CONNECT_ERROR 136 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 135 
#define  RDMA_CM_EVENT_DISCONNECTED 134 
#define  RDMA_CM_EVENT_ESTABLISHED 133 
#define  RDMA_CM_EVENT_REJECTED 132 
#define  RDMA_CM_EVENT_ROUTE_ERROR 131 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 130 
#define  RDMA_CM_EVENT_TIMEWAIT_EXIT 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct nvme_rdma_queue*) ; 
 int FUNC4 (struct nvme_rdma_queue*) ; 
 int FUNC5 (struct nvme_rdma_queue*,struct rdma_cm_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct rdma_cm_id *cm_id,
		struct rdma_cm_event *ev)
{
	struct nvme_rdma_queue *queue = cm_id->context;
	int cm_error = 0;

	FUNC1(queue->ctrl->ctrl.device, "%s (%d): status %d id %p\n",
		FUNC9(ev->event), ev->event,
		ev->status, cm_id);

	switch (ev->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		cm_error = FUNC3(queue);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		cm_error = FUNC8(queue);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		queue->cm_error = FUNC4(queue);
		/* complete cm_done regardless of success/failure */
		FUNC0(&queue->cm_done);
		return 0;
	case RDMA_CM_EVENT_REJECTED:
		FUNC6(queue);
		cm_error = FUNC5(queue, ev);
		break;
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
		FUNC6(queue);
		/* fall through */
	case RDMA_CM_EVENT_ADDR_ERROR:
		FUNC1(queue->ctrl->ctrl.device,
			"CM error event %d\n", ev->event);
		cm_error = -ECONNRESET;
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
	case RDMA_CM_EVENT_ADDR_CHANGE:
	case RDMA_CM_EVENT_TIMEWAIT_EXIT:
		FUNC1(queue->ctrl->ctrl.device,
			"disconnect received - connection closed\n");
		FUNC7(queue->ctrl);
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		/* device removal is handled via the ib_client API */
		break;
	default:
		FUNC2(queue->ctrl->ctrl.device,
			"Unexpected RDMA CM event (%d)\n", ev->event);
		FUNC7(queue->ctrl);
		break;
	}

	if (cm_error) {
		queue->cm_error = cm_error;
		FUNC0(&queue->cm_done);
	}

	return 0;
}