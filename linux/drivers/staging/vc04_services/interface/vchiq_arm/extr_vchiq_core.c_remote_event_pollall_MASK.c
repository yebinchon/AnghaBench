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
struct vchiq_state {TYPE_1__* local; int /*<<< orphan*/  recycle_event; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  sync_release_event; int /*<<< orphan*/  sync_trigger_event; } ;
struct TYPE_2__ {int /*<<< orphan*/  recycle; int /*<<< orphan*/  trigger; int /*<<< orphan*/  sync_release; int /*<<< orphan*/  sync_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC1(struct vchiq_state *state)
{
	FUNC0(&state->sync_trigger_event, &state->local->sync_trigger);
	FUNC0(&state->sync_release_event, &state->local->sync_release);
	FUNC0(&state->trigger_event, &state->local->trigger);
	FUNC0(&state->recycle_event, &state->local->recycle);
}