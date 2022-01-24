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
struct TYPE_3__ {int /*<<< orphan*/  fourcc; } ;
struct vchiq_service {int client_id; scalar_t__ srvstate; int /*<<< orphan*/  ref_count; TYPE_2__* state; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  localport; int /*<<< orphan*/  version_min; int /*<<< orphan*/  version; TYPE_1__ base; } ;
struct vchiq_open_payload {int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  QMFLAGS_IS_BLOCKING ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_MSG_OPEN ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_SRVSTATE_CLOSEWAIT ; 
 scalar_t__ VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SRVSTATE_OPENSYNC ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  error_count ; 
 int /*<<< orphan*/  memcpy_copy_callback ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vchiq_open_payload*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC5 (struct vchiq_service*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

VCHIQ_STATUS_T
FUNC7(struct vchiq_service *service, int client_id)
{
	struct vchiq_open_payload payload = {
		service->base.fourcc,
		client_id,
		service->version,
		service->version_min
	};
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

	service->client_id = client_id;
	FUNC5(service);
	status = FUNC2(service->state,
			       NULL,
			       FUNC0(VCHIQ_MSG_OPEN,
					      service->localport,
					      0),
			       memcpy_copy_callback,
			       &payload,
			       sizeof(payload),
			       QMFLAGS_IS_BLOCKING);
	if (status == VCHIQ_SUCCESS) {
		/* Wait for the ACK/NAK */
		if (FUNC6(&service->remove_event)) {
			status = VCHIQ_RETRY;
			FUNC4(service);
		} else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
			(service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
			if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
				FUNC3(vchiq_core_log_level,
					"%d: osi - srvstate = %s (ref %d)",
					service->state->id,
					srvstate_names[service->srvstate],
					service->ref_count);
			status = VCHIQ_ERROR;
			FUNC1(service, error_count);
			FUNC4(service);
		}
	}
	return status;
}