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
struct vchiq_state {char* rx_data; unsigned int rx_pos; TYPE_1__* remote; } ;
struct vchiq_slot_info {scalar_t__ release_count; scalar_t__ use_count; } ;
struct vchiq_service {scalar_t__ localport; scalar_t__ sync; struct vchiq_state* state; } ;
struct vchiq_header {int msgid; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int slot_last; int slot_sync; int slot_first; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vchiq_state*,int) ; 
 struct vchiq_slot_info* FUNC1 (struct vchiq_state*,int) ; 
 int VCHIQ_MSGID_CLAIMED ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int VCHIQ_SLOT_MASK ; 
 unsigned int VCHIQ_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vchiq_state*,struct vchiq_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct vchiq_state*,struct vchiq_slot_info*,struct vchiq_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,struct vchiq_header*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct vchiq_header*) ; 

__attribute__((used)) static void
FUNC9(struct vchiq_service *service)
{
	struct vchiq_state *state = service->state;
	int slot_last = state->remote->slot_last;
	int i;

	/* Release any claimed messages aimed at this service */

	if (service->sync) {
		struct vchiq_header *header =
			(struct vchiq_header *)FUNC0(state,
						state->remote->slot_sync);
		if (FUNC2(header->msgid) == service->localport)
			FUNC5(state, header);

		return;
	}

	for (i = state->remote->slot_first; i <= slot_last; i++) {
		struct vchiq_slot_info *slot_info =
			FUNC1(state, i);
		if (slot_info->release_count != slot_info->use_count) {
			char *data =
				(char *)FUNC0(state, i);
			unsigned int pos, end;

			end = VCHIQ_SLOT_SIZE;
			if (data == state->rx_data)
				/* This buffer is still being read from - stop
				** at the current read position */
				end = state->rx_pos & VCHIQ_SLOT_MASK;

			pos = 0;

			while (pos < end) {
				struct vchiq_header *header =
					(struct vchiq_header *)(data + pos);
				int msgid = header->msgid;
				int port = FUNC2(msgid);

				if ((port == service->localport) &&
					(msgid & VCHIQ_MSGID_CLAIMED)) {
					FUNC8(vchiq_core_log_level,
						"  fsi - hdr %pK", header);
					FUNC6(state, slot_info, header,
						NULL);
				}
				pos += FUNC4(header->size);
				if (pos > VCHIQ_SLOT_SIZE) {
					FUNC7(vchiq_core_log_level,
						"fsi - pos %x: header %pK, msgid %x, header->msgid %x, header->size %x",
						pos, header, msgid,
						header->msgid, header->size);
					FUNC3(1, "invalid slot position\n");
				}
			}
		}
	}
}