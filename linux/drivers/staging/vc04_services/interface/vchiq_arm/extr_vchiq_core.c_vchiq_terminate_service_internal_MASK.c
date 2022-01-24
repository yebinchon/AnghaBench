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
struct vchiq_service {int /*<<< orphan*/  remoteport; int /*<<< orphan*/  localport; struct vchiq_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_POLL_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct vchiq_service*) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_state*,struct vchiq_service*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct vchiq_service *service)
{
	struct vchiq_state *state = service->state;

	FUNC2(vchiq_core_log_level, "%d: tsi - (%d<->%d)",
		state->id, service->localport, service->remoteport);

	FUNC0(service);

	/* Mark the service for removal by the slot handler */
	FUNC1(state, service, VCHIQ_POLL_REMOVE);
}