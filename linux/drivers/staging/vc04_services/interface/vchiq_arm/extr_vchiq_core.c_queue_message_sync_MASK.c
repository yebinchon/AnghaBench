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
struct vchiq_state {int /*<<< orphan*/  sync_mutex; TYPE_2__* remote; int /*<<< orphan*/  slot_mutex; int /*<<< orphan*/  id; int /*<<< orphan*/  sync_release_event; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int /*<<< orphan*/  slot_sync; int /*<<< orphan*/  sync_release; } ;
struct TYPE_3__ {int fourcc; } ;
struct vchiq_service {TYPE_1__ base; } ;
struct vchiq_header {int msgid; int size; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
struct TYPE_4__ {int /*<<< orphan*/  sync_trigger; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vchiq_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VCHIQ_LOG_INFO ; 
 scalar_t__ VCHIQ_LOG_TRACE ; 
 int FUNC3 (char,char,char,char) ; 
 int VCHIQ_MSGID_PADDING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ VCHIQ_MSG_PAUSE ; 
 scalar_t__ VCHIQ_MSG_RESUME ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC7 (struct vchiq_service*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vchiq_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vchiq_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 scalar_t__ FUNC10 (ssize_t (*) (void*,void*,size_t,size_t),void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ctrl_tx_bytes ; 
 int /*<<< orphan*/  ctrl_tx_count ; 
 int /*<<< orphan*/  error_count ; 
 int /*<<< orphan*/  FUNC11 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vchiq_header*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ vchiq_sync_log_level ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC22(struct vchiq_state *state, struct vchiq_service *service,
		   int msgid,
		   ssize_t (*copy_callback)(void *context, void *dest,
					    size_t offset, size_t maxsize),
		   void *context, int size, int is_blocking)
{
	struct vchiq_shared_state *local;
	struct vchiq_header *header;
	ssize_t callback_result;

	local = state->local;

	if (FUNC6(msgid) != VCHIQ_MSG_RESUME &&
	    FUNC13(&state->sync_mutex))
		return VCHIQ_RETRY;

	FUNC16(&state->sync_release_event, &local->sync_release);

	FUNC17();

	header = (struct vchiq_header *)FUNC0(state,
		local->slot_sync);

	{
		int oldmsgid = header->msgid;

		if (oldmsgid != VCHIQ_MSGID_PADDING)
			FUNC19(vchiq_core_log_level,
				"%d: qms - msgid %x, not PADDING",
				state->id, oldmsgid);
	}

	FUNC20(vchiq_sync_log_level,
		       "%d: qms %s@%pK,%x (%d->%d)", state->id,
		       FUNC12(FUNC6(msgid)),
		       header, size, FUNC5(msgid),
		       FUNC4(msgid));

	callback_result =
		FUNC10(copy_callback, context,
				  header->data, size);

	if (callback_result < 0) {
		FUNC14(&state->slot_mutex);
		FUNC8(service,
					error_count);
		return VCHIQ_ERROR;
	}

	if (service) {
		if (FUNC1(service,
				     VCHIQ_LOG_INFO))
			FUNC18("Sent", 0,
					   header->data,
					   FUNC11((size_t)16,
					       (size_t)callback_result));

		FUNC8(service, ctrl_tx_count);
		FUNC7(service, ctrl_tx_bytes, size);
	} else {
		FUNC9(state, ctrl_tx_count);
	}

	header->size = size;
	header->msgid = msgid;

	if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
		int svc_fourcc;

		svc_fourcc = service
			? service->base.fourcc
			: FUNC3('?', '?', '?', '?');

		FUNC21(vchiq_sync_log_level,
			"Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d",
			FUNC12(FUNC6(msgid)),
			FUNC6(msgid),
			FUNC2(svc_fourcc),
			FUNC5(msgid),
			FUNC4(msgid),
			size);
	}

	FUNC15(&state->remote->sync_trigger);

	if (FUNC6(msgid) != VCHIQ_MSG_PAUSE)
		FUNC14(&state->sync_mutex);

	return VCHIQ_SUCCESS;
}