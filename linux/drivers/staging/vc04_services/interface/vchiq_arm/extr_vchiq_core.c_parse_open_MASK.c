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
struct vchiq_state {scalar_t__ version_common; int /*<<< orphan*/  id; } ;
struct vchiq_service {short version; short version_min; short peer_version; scalar_t__ srvstate; unsigned int remoteport; int client_id; scalar_t__ sync; int /*<<< orphan*/  localport; } ;
struct vchiq_openack_payload {short member_0; } ;
struct vchiq_open_payload {unsigned int fourcc; short version; short version_min; } ;
struct vchiq_header {int msgid; int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  ack_payload ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  VCHIQ_MSG_CLOSE ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  VCHIQ_MSG_OPENACK ; 
 unsigned int FUNC3 (int) ; 
 unsigned int VCHIQ_PORT_FREE ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  VCHIQ_SERVICE_OPENED ; 
 scalar_t__ VCHIQ_SRVSTATE_LISTENING ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPEN ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPENSYNC ; 
 scalar_t__ VCHIQ_VERSION_SYNCHRONOUS_MODE ; 
 struct vchiq_service* FUNC4 (struct vchiq_state*,unsigned int) ; 
 scalar_t__ FUNC5 (struct vchiq_service*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * memcpy_copy_callback ; 
 scalar_t__ FUNC6 (struct vchiq_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vchiq_openack_payload*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vchiq_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vchiq_openack_payload*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vchiq_service*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct vchiq_header*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,short,short) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct vchiq_service*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct vchiq_state *state, struct vchiq_header *header)
{
	struct vchiq_service *service = NULL;
	int msgid, size;
	unsigned int localport, remoteport;

	msgid = header->msgid;
	size = header->size;
	localport = FUNC2(msgid);
	remoteport = FUNC3(msgid);
	if (size >= sizeof(struct vchiq_open_payload)) {
		const struct vchiq_open_payload *payload =
			(struct vchiq_open_payload *)header->data;
		unsigned int fourcc;

		fourcc = payload->fourcc;
		FUNC9(vchiq_core_log_level,
			"%d: prs OPEN@%pK (%d->'%c%c%c%c')",
			state->id, header, localport,
			FUNC0(fourcc));

		service = FUNC4(state, fourcc);

		if (service) {
			/* A matching service exists */
			short version = payload->version;
			short version_min = payload->version_min;

			if ((service->version < version_min) ||
				(version < service->version_min)) {
				/* Version mismatch */
				FUNC12();
				FUNC10("%d: service %d (%c%c%c%c) "
					"version mismatch - local (%d, min %d)"
					" vs. remote (%d, min %d)",
					state->id, service->localport,
					FUNC0(fourcc),
					service->version, service->version_min,
					version, version_min);
				FUNC11();
				FUNC8(service);
				service = NULL;
				goto fail_open;
			}
			service->peer_version = version;

			if (service->srvstate == VCHIQ_SRVSTATE_LISTENING) {
				struct vchiq_openack_payload ack_payload = {
					service->version
				};

				if (state->version_common <
				    VCHIQ_VERSION_SYNCHRONOUS_MODE)
					service->sync = 0;

				/* Acknowledge the OPEN */
				if (service->sync) {
					if (FUNC7(
						state,
						NULL,
						FUNC1(
							VCHIQ_MSG_OPENACK,
							service->localport,
							remoteport),
						memcpy_copy_callback,
						&ack_payload,
						sizeof(ack_payload),
						0) == VCHIQ_RETRY)
						goto bail_not_ready;
				} else {
					if (FUNC6(state,
							NULL,
							FUNC1(
							VCHIQ_MSG_OPENACK,
							service->localport,
							remoteport),
						memcpy_copy_callback,
						&ack_payload,
						sizeof(ack_payload),
						0) == VCHIQ_RETRY)
						goto bail_not_ready;
				}

				/* The service is now open */
				FUNC13(service,
					service->sync ? VCHIQ_SRVSTATE_OPENSYNC
					: VCHIQ_SRVSTATE_OPEN);
			}

			service->remoteport = remoteport;
			service->client_id = ((int *)header->data)[1];
			if (FUNC5(service, VCHIQ_SERVICE_OPENED,
				NULL, NULL) == VCHIQ_RETRY) {
				/* Bail out if not ready */
				service->remoteport = VCHIQ_PORT_FREE;
				goto bail_not_ready;
			}

			/* Success - the message has been dealt with */
			FUNC8(service);
			return 1;
		}
	}

fail_open:
	/* No available service, or an invalid request - send a CLOSE */
	if (FUNC6(state, NULL,
		FUNC1(VCHIQ_MSG_CLOSE, 0, FUNC3(msgid)),
		NULL, NULL, 0, 0) == VCHIQ_RETRY)
		goto bail_not_ready;

	return 1;

bail_not_ready:
	if (service)
		FUNC8(service);

	return 0;
}