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
struct vchiq_service {size_t srvstate; int /*<<< orphan*/  localport; TYPE_1__* state; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  public_fourcc; } ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_2__ {scalar_t__ slot_handler_thread; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_FOURCC_INVALID ; 
 int /*<<< orphan*/  VCHIQ_POLL_REMOVE ; 
 scalar_t__ VCHIQ_RETRY ; 
 size_t VCHIQ_SRVSTATE_FREE ; 
 size_t VCHIQ_SRVSTATE_HIDDEN ; 
 size_t VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ current ; 
 struct vchiq_service* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct vchiq_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  FUNC4 (struct vchiq_service*) ; 
 scalar_t__ FUNC5 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

VCHIQ_STATUS_T
FUNC9(VCHIQ_SERVICE_HANDLE_T handle)
{
	/* Unregister the service */
	struct vchiq_service *service = FUNC1(handle);
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

	if (!service)
		return VCHIQ_ERROR;

	FUNC6(vchiq_core_log_level,
		"%d: remove_service:%d",
		service->state->id, service->localport);

	if (service->srvstate == VCHIQ_SRVSTATE_FREE) {
		FUNC4(service);
		return VCHIQ_ERROR;
	}

	FUNC2(service);

	if ((service->srvstate == VCHIQ_SRVSTATE_HIDDEN) ||
		(current == service->state->slot_handler_thread)) {
		/* Make it look like a client, because it must be removed and
		   not left in the LISTENING state. */
		service->public_fourcc = VCHIQ_FOURCC_INVALID;

		status = FUNC5(service,
			0/*!close_recvd*/);
		FUNC0(status == VCHIQ_RETRY);
	} else {
		/* Mark the service for removal by the slot handler */
		FUNC3(service->state, service, VCHIQ_POLL_REMOVE);
	}
	while (1) {
		if (FUNC8(&service->remove_event)) {
			status = VCHIQ_RETRY;
			break;
		}

		if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
			(service->srvstate == VCHIQ_SRVSTATE_OPEN))
			break;

		FUNC7(vchiq_core_log_level,
			"%d: remove_service:%d - waiting in state %s",
			service->state->id, service->localport,
			srvstate_names[service->srvstate]);
	}

	if ((status == VCHIQ_SUCCESS) &&
		(service->srvstate != VCHIQ_SRVSTATE_FREE))
		status = VCHIQ_ERROR;

	FUNC4(service);

	return status;
}