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
struct rdma_cm_id {TYPE_1__* qp; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; } ;
struct nvmet_rdma_queue {int dummy; } ;
struct TYPE_2__ {struct nvmet_rdma_queue* qp_context; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_ADDR_CHANGE 136 
#define  RDMA_CM_EVENT_CONNECT_ERROR 135 
#define  RDMA_CM_EVENT_CONNECT_REQUEST 134 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 133 
#define  RDMA_CM_EVENT_DISCONNECTED 132 
#define  RDMA_CM_EVENT_ESTABLISHED 131 
#define  RDMA_CM_EVENT_REJECTED 130 
#define  RDMA_CM_EVENT_TIMEWAIT_EXIT 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int FUNC0 (struct rdma_cm_id*,struct nvmet_rdma_queue*) ; 
 int FUNC1 (struct rdma_cm_id*,struct rdma_cm_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_id*,struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rdma_cm_id *cm_id,
		struct rdma_cm_event *event)
{
	struct nvmet_rdma_queue *queue = NULL;
	int ret = 0;

	if (cm_id->qp)
		queue = cm_id->qp->qp_context;

	FUNC5("%s (%d): status %d id %p\n",
		FUNC7(event->event), event->event,
		event->status, cm_id);

	switch (event->event) {
	case RDMA_CM_EVENT_CONNECT_REQUEST:
		ret = FUNC1(cm_id, event);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC4(queue);
		break;
	case RDMA_CM_EVENT_ADDR_CHANGE:
	case RDMA_CM_EVENT_DISCONNECTED:
	case RDMA_CM_EVENT_TIMEWAIT_EXIT:
		FUNC3(queue);
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		ret = FUNC0(cm_id, queue);
		break;
	case RDMA_CM_EVENT_REJECTED:
		FUNC5("Connection rejected: %s\n",
			 FUNC8(cm_id, event->status));
		/* FALLTHROUGH */
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_CONNECT_ERROR:
		FUNC2(cm_id, queue);
		break;
	default:
		FUNC6("received unrecognized RDMA CM event %d\n",
			event->event);
		break;
	}

	return ret;
}