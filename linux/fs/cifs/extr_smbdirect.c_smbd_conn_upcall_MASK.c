#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct smbd_connection {int /*<<< orphan*/  wait_send_queue; int /*<<< orphan*/  wait_reassembly_queue; int /*<<< orphan*/  disconn_wait; void* transport_status; int /*<<< orphan*/  conn_wait; int /*<<< orphan*/  ri_done; int /*<<< orphan*/  ri_rc; } ;
struct rdma_cm_id {struct smbd_connection* context; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 int /*<<< orphan*/  INFO ; 
#define  RDMA_CM_EVENT_ADDR_ERROR 137 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 136 
#define  RDMA_CM_EVENT_CONNECT_ERROR 135 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 134 
#define  RDMA_CM_EVENT_DISCONNECTED 133 
#define  RDMA_CM_EVENT_ESTABLISHED 132 
#define  RDMA_CM_EVENT_REJECTED 131 
#define  RDMA_CM_EVENT_ROUTE_ERROR 130 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 void* SMBD_CONNECTED ; 
 void* SMBD_DISCONNECTED ; 
 void* SMBD_NEGOTIATE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
		struct rdma_cm_id *id, struct rdma_cm_event *event)
{
	struct smbd_connection *info = id->context;

	FUNC1(INFO, "event=%d status=%d\n",
		event->event, event->status);

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		info->ri_rc = 0;
		FUNC0(&info->ri_done);
		break;

	case RDMA_CM_EVENT_ADDR_ERROR:
		info->ri_rc = -EHOSTUNREACH;
		FUNC0(&info->ri_done);
		break;

	case RDMA_CM_EVENT_ROUTE_ERROR:
		info->ri_rc = -ENETUNREACH;
		FUNC0(&info->ri_done);
		break;

	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC1(INFO, "connected event=%d\n", event->event);
		info->transport_status = SMBD_CONNECTED;
		FUNC3(&info->conn_wait);
		break;

	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		FUNC1(INFO, "connecting failed event=%d\n", event->event);
		info->transport_status = SMBD_DISCONNECTED;
		FUNC3(&info->conn_wait);
		break;

	case RDMA_CM_EVENT_DEVICE_REMOVAL:
	case RDMA_CM_EVENT_DISCONNECTED:
		/* This happenes when we fail the negotiation */
		if (info->transport_status == SMBD_NEGOTIATE_FAILED) {
			info->transport_status = SMBD_DISCONNECTED;
			FUNC2(&info->conn_wait);
			break;
		}

		info->transport_status = SMBD_DISCONNECTED;
		FUNC3(&info->disconn_wait);
		FUNC3(&info->wait_reassembly_queue);
		FUNC4(&info->wait_send_queue);
		break;

	default:
		break;
	}

	return 0;
}