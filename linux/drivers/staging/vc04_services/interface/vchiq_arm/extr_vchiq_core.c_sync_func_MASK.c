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
struct vchiq_state {int /*<<< orphan*/  id; int /*<<< orphan*/  sync_trigger_event; TYPE_1__* remote; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int /*<<< orphan*/  sync_trigger; } ;
struct TYPE_4__ {int fourcc; } ;
struct vchiq_service {unsigned int remoteport; int sync; int /*<<< orphan*/  srvstate; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  peer_version; TYPE_2__ base; } ;
struct vchiq_openack_payload {int /*<<< orphan*/  version; } ;
struct vchiq_header {int msgid; int size; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  slot_sync; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vchiq_state*,int /*<<< orphan*/ ) ; 
 struct vchiq_header* FUNC1 (int) ; 
 scalar_t__ VCHIQ_LOG_TRACE ; 
 int FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  VCHIQ_MESSAGE_AVAILABLE ; 
#define  VCHIQ_MSG_DATA 129 
 unsigned int FUNC3 (int) ; 
#define  VCHIQ_MSG_OPENACK 128 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  VCHIQ_RETRY ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPENING ; 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_OPENSYNC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct vchiq_service* FUNC7 (struct vchiq_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct vchiq_service*,int /*<<< orphan*/ ,struct vchiq_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct vchiq_state*,struct vchiq_header*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,char*,int /*<<< orphan*/ ,struct vchiq_header*,int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,char*,int /*<<< orphan*/ ,struct vchiq_header*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 scalar_t__ vchiq_sync_log_level ; 

__attribute__((used)) static int
FUNC20(void *v)
{
	struct vchiq_state *state = v;
	struct vchiq_shared_state *local = state->local;
	struct vchiq_header *header =
		(struct vchiq_header *)FUNC0(state,
			state->remote->slot_sync);

	while (1) {
		struct vchiq_service *service;
		int msgid, size;
		int type;
		unsigned int localport, remoteport;

		FUNC12(&state->sync_trigger_event, &local->sync_trigger);

		FUNC13();

		msgid = header->msgid;
		size = header->size;
		type = FUNC5(msgid);
		localport = FUNC3(msgid);
		remoteport = FUNC4(msgid);

		service = FUNC7(state, localport);

		if (!service) {
			FUNC16(vchiq_sync_log_level,
				"%d: sf %s@%pK (%d->%d) - invalid/closed service %d",
				state->id, FUNC10(type),
				header, remoteport, localport, localport);
			FUNC11(state, header);
			continue;
		}

		if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
			int svc_fourcc;

			svc_fourcc = service
				? service->base.fourcc
				: FUNC2('?', '?', '?', '?');
			FUNC18(vchiq_sync_log_level,
				"Rcvd Msg %s from %c%c%c%c s:%d d:%d len:%d",
				FUNC10(type),
				FUNC1(svc_fourcc),
				remoteport, localport, size);
			if (size > 0)
				FUNC15("Rcvd", 0, header->data,
					FUNC9(16, size));
		}

		switch (type) {
		case VCHIQ_MSG_OPENACK:
			if (size >= sizeof(struct vchiq_openack_payload)) {
				const struct vchiq_openack_payload *payload =
					(struct vchiq_openack_payload *)
					header->data;
				service->peer_version = payload->version;
			}
			FUNC17(vchiq_sync_log_level,
				"%d: sf OPENACK@%pK,%x (%d->%d) v:%d",
				state->id, header, size, remoteport, localport,
				service->peer_version);
			if (service->srvstate == VCHIQ_SRVSTATE_OPENING) {
				service->remoteport = remoteport;
				FUNC19(service,
					VCHIQ_SRVSTATE_OPENSYNC);
				service->sync = 1;
				FUNC6(&service->remove_event);
			}
			FUNC11(state, header);
			break;

		case VCHIQ_MSG_DATA:
			FUNC18(vchiq_sync_log_level,
				"%d: sf DATA@%pK,%x (%d->%d)",
				state->id, header, size, remoteport, localport);

			if ((service->remoteport == remoteport) &&
				(service->srvstate ==
				VCHIQ_SRVSTATE_OPENSYNC)) {
				if (FUNC8(service,
					VCHIQ_MESSAGE_AVAILABLE, header,
					NULL) == VCHIQ_RETRY)
					FUNC16(vchiq_sync_log_level,
						"synchronous callback to "
						"service %d returns "
						"VCHIQ_RETRY",
						localport);
			}
			break;

		default:
			FUNC16(vchiq_sync_log_level,
				"%d: sf unexpected msgid %x@%pK,%x",
				state->id, msgid, header, size);
			FUNC11(state, header);
			break;
		}

		FUNC14(service);
	}

	return 0;
}