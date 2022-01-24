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
typedef  int u32 ;
struct vchiq_state {int poll_needed; TYPE_1__* local; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/ * poll_services; } ;
struct vchiq_service {int localport; int /*<<< orphan*/  poll_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

inline void
FUNC4(struct vchiq_state *state, struct vchiq_service *service,
	     int poll_type)
{
	u32 value;

	if (service) {
		do {
			value = FUNC1(&service->poll_flags);
		} while (FUNC0(&service->poll_flags, value,
			value | (1 << poll_type)) != value);

		do {
			value = FUNC1(&state->poll_services[
				service->localport>>5]);
		} while (FUNC0(
			&state->poll_services[service->localport>>5],
			value, value | (1 << (service->localport & 0x1f)))
			!= value);
	}

	state->poll_needed = 1;
	FUNC3();

	/* ... and ensure the slot handler runs. */
	FUNC2(&state->trigger_event, &state->local->trigger);
}