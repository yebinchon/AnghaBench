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
struct vchiq_state {int /*<<< orphan*/  slot_mutex; int /*<<< orphan*/  id; } ;
struct vchiq_bulk_queue {scalar_t__ local_insert; scalar_t__ remove; int /*<<< orphan*/  process; int /*<<< orphan*/  remote_insert; struct vchiq_bulk* bulks; } ;
struct vchiq_service {scalar_t__ srvstate; int /*<<< orphan*/  bulk_mutex; int /*<<< orphan*/  localport; int /*<<< orphan*/  remoteport; int /*<<< orphan*/  bulk_remove_event; struct vchiq_bulk_queue bulk_rx; struct vchiq_bulk_queue bulk_tx; struct vchiq_state* state; } ;
struct vchiq_bulk {int mode; int size; scalar_t__ data; scalar_t__ actual; void* userdata; int /*<<< orphan*/  dir; } ;
struct bulk_waiter {scalar_t__ actual; int /*<<< orphan*/  event; struct vchiq_bulk* bulk; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int VCHIQ_BULK_MODE_T ;
typedef  int /*<<< orphan*/  VCHIQ_BULK_DIR_T ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int QMFLAGS_IS_BLOCKING ; 
 int QMFLAGS_NO_MUTEX_LOCK ; 
 int QMFLAGS_NO_MUTEX_UNLOCK ; 
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ; 
#define  VCHIQ_BULK_MODE_BLOCKING 131 
#define  VCHIQ_BULK_MODE_CALLBACK 130 
#define  VCHIQ_BULK_MODE_NOCALLBACK 129 
#define  VCHIQ_BULK_MODE_WAITING 128 
 int /*<<< orphan*/  VCHIQ_BULK_TRANSMIT ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VCHIQ_MSG_BULK_RX ; 
 int VCHIQ_MSG_BULK_TX ; 
 scalar_t__ VCHIQ_NUM_SERVICE_BULKS ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC2 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  bulk_stalls ; 
 struct vchiq_service* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memcpy_copy_callback ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct vchiq_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vchiq_service*) ; 
 scalar_t__ FUNC9 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC10 (struct vchiq_bulk*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const,int,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct vchiq_bulk*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 

VCHIQ_STATUS_T FUNC16(VCHIQ_SERVICE_HANDLE_T handle,
				   void *offset, int size, void *userdata,
				   VCHIQ_BULK_MODE_T mode,
				   VCHIQ_BULK_DIR_T dir)
{
	struct vchiq_service *service = FUNC3(handle);
	struct vchiq_bulk_queue *queue;
	struct vchiq_bulk *bulk;
	struct vchiq_state *state;
	struct bulk_waiter *bulk_waiter = NULL;
	const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
	const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
		VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
	VCHIQ_STATUS_T status = VCHIQ_ERROR;
	int payload[2];

	if (!service || service->srvstate != VCHIQ_SRVSTATE_OPEN ||
	    !offset || FUNC9(service) != VCHIQ_SUCCESS)
		goto error_exit;

	switch (mode) {
	case VCHIQ_BULK_MODE_NOCALLBACK:
	case VCHIQ_BULK_MODE_CALLBACK:
		break;
	case VCHIQ_BULK_MODE_BLOCKING:
		bulk_waiter = userdata;
		FUNC4(&bulk_waiter->event);
		bulk_waiter->actual = 0;
		bulk_waiter->bulk = NULL;
		break;
	case VCHIQ_BULK_MODE_WAITING:
		bulk_waiter = userdata;
		bulk = bulk_waiter->bulk;
		goto waiting;
	default:
		goto error_exit;
	}

	state = service->state;

	queue = (dir == VCHIQ_BULK_TRANSMIT) ?
		&service->bulk_tx : &service->bulk_rx;

	if (FUNC5(&service->bulk_mutex)) {
		status = VCHIQ_RETRY;
		goto error_exit;
	}

	if (queue->local_insert == queue->remove + VCHIQ_NUM_SERVICE_BULKS) {
		FUNC2(service, bulk_stalls);
		do {
			FUNC6(&service->bulk_mutex);
			if (FUNC14(
						&service->bulk_remove_event)) {
				status = VCHIQ_RETRY;
				goto error_exit;
			}
			if (FUNC5(&service->bulk_mutex)) {
				status = VCHIQ_RETRY;
				goto error_exit;
			}
		} while (queue->local_insert == queue->remove +
				VCHIQ_NUM_SERVICE_BULKS);
	}

	bulk = &queue->bulks[FUNC0(queue->local_insert)];

	bulk->mode = mode;
	bulk->dir = dir;
	bulk->userdata = userdata;
	bulk->size = size;
	bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;

	if (FUNC13(bulk, offset, size, dir) != VCHIQ_SUCCESS)
		goto unlock_error_exit;

	FUNC15();

	FUNC11(vchiq_core_log_level,
		"%d: bt (%d->%d) %cx %x@%pK %pK",
		state->id, service->localport, service->remoteport, dir_char,
		size, bulk->data, userdata);

	/* The slot mutex must be held when the service is being closed, so
	   claim it here to ensure that isn't happening */
	if (FUNC5(&state->slot_mutex)) {
		status = VCHIQ_RETRY;
		goto cancel_bulk_error_exit;
	}

	if (service->srvstate != VCHIQ_SRVSTATE_OPEN)
		goto unlock_both_error_exit;

	payload[0] = (int)(long)bulk->data;
	payload[1] = bulk->size;
	status = FUNC7(state,
			       NULL,
			       FUNC1(dir_msgtype,
					      service->localport,
					      service->remoteport),
			       memcpy_copy_callback,
			       &payload,
			       sizeof(payload),
			       QMFLAGS_IS_BLOCKING |
			       QMFLAGS_NO_MUTEX_LOCK |
			       QMFLAGS_NO_MUTEX_UNLOCK);
	if (status != VCHIQ_SUCCESS)
		goto unlock_both_error_exit;

	queue->local_insert++;

	FUNC6(&state->slot_mutex);
	FUNC6(&service->bulk_mutex);

	FUNC12(vchiq_core_log_level,
		"%d: bt:%d %cx li=%x ri=%x p=%x",
		state->id,
		service->localport, dir_char,
		queue->local_insert, queue->remote_insert, queue->process);

waiting:
	FUNC8(service);

	status = VCHIQ_SUCCESS;

	if (bulk_waiter) {
		bulk_waiter->bulk = bulk;
		if (FUNC14(&bulk_waiter->event))
			status = VCHIQ_RETRY;
		else if (bulk_waiter->actual == VCHIQ_BULK_ACTUAL_ABORTED)
			status = VCHIQ_ERROR;
	}

	return status;

unlock_both_error_exit:
	FUNC6(&state->slot_mutex);
cancel_bulk_error_exit:
	FUNC10(bulk);
unlock_error_exit:
	FUNC6(&service->bulk_mutex);

error_exit:
	if (service)
		FUNC8(service);
	return status;
}