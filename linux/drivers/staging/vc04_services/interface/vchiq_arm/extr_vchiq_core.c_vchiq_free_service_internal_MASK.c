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
struct vchiq_state {int /*<<< orphan*/  id; } ;
struct vchiq_service {int srvstate; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  localport; struct vchiq_state* state; } ;

/* Variables and functions */
#define  VCHIQ_SRVSTATE_CLOSED 132 
#define  VCHIQ_SRVSTATE_CLOSEWAIT 131 
 int /*<<< orphan*/  VCHIQ_SRVSTATE_FREE ; 
#define  VCHIQ_SRVSTATE_HIDDEN 130 
#define  VCHIQ_SRVSTATE_LISTENING 129 
#define  VCHIQ_SRVSTATE_OPENING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_service*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vchiq_service*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct vchiq_service *service)
{
	struct vchiq_state *state = service->state;

	FUNC3(vchiq_core_log_level, "%d: fsi - (%d)",
		state->id, service->localport);

	switch (service->srvstate) {
	case VCHIQ_SRVSTATE_OPENING:
	case VCHIQ_SRVSTATE_CLOSED:
	case VCHIQ_SRVSTATE_HIDDEN:
	case VCHIQ_SRVSTATE_LISTENING:
	case VCHIQ_SRVSTATE_CLOSEWAIT:
		break;
	default:
		FUNC2(vchiq_core_log_level,
			"%d: fsi - (%d) in state %s",
			state->id, service->localport,
			srvstate_names[service->srvstate]);
		return;
	}

	FUNC4(service, VCHIQ_SRVSTATE_FREE);

	FUNC0(&service->remove_event);

	/* Release the initial lock */
	FUNC1(service);
}