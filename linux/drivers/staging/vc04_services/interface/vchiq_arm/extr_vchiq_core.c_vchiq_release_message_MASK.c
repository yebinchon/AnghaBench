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
struct vchiq_state {struct vchiq_shared_state* remote; } ;
struct vchiq_slot_info {int dummy; } ;
struct vchiq_shared_state {int slot_first; int slot_last; int slot_sync; } ;
struct vchiq_service {struct vchiq_state* state; } ;
struct vchiq_header {int msgid; } ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;

/* Variables and functions */
 int FUNC0 (struct vchiq_state*,void*) ; 
 struct vchiq_slot_info* FUNC1 (struct vchiq_state*,int) ; 
 int VCHIQ_MSGID_CLAIMED ; 
 struct vchiq_service* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vchiq_state*,struct vchiq_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct vchiq_state*,struct vchiq_slot_info*,struct vchiq_header*,struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC5 (struct vchiq_service*) ; 

void
FUNC6(VCHIQ_SERVICE_HANDLE_T handle,
		      struct vchiq_header *header)
{
	struct vchiq_service *service = FUNC2(handle);
	struct vchiq_shared_state *remote;
	struct vchiq_state *state;
	int slot_index;

	if (!service)
		return;

	state = service->state;
	remote = state->remote;

	slot_index = FUNC0(state, (void *)header);

	if ((slot_index >= remote->slot_first) &&
		(slot_index <= remote->slot_last)) {
		int msgid = header->msgid;

		if (msgid & VCHIQ_MSGID_CLAIMED) {
			struct vchiq_slot_info *slot_info =
				FUNC1(state, slot_index);

			FUNC4(state, slot_info, header, service);
		}
	} else if (slot_index == remote->slot_sync)
		FUNC3(state, header);

	FUNC5(service);
}