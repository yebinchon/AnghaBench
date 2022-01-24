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
struct TYPE_2__ {int /*<<< orphan*/  pending_commands; } ;
struct cardstate {int commands_pending; int /*<<< orphan*/  lock; TYPE_1__ at_state; int /*<<< orphan*/  cidmode; } ;
struct at_state_t {int /*<<< orphan*/  list; int /*<<< orphan*/  seq_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  PC_UMMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct at_state_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct at_state_t **at_state_p,
			    struct cardstate *cs)
{
	unsigned long flags;

	FUNC4(&cs->lock, flags);
	++(*at_state_p)->seq_index;

	/* revert to selected idle mode */
	if (!cs->cidmode) {
		cs->at_state.pending_commands |= PC_UMMODE;
		FUNC0(DEBUG_EVENT, "Scheduling PC_UMMODE");
		cs->commands_pending = 1;
	}

	/* check for and deallocate temporary AT state */
	if (!FUNC3(&(*at_state_p)->list)) {
		FUNC2(&(*at_state_p)->list);
		FUNC1(*at_state_p);
		*at_state_p = NULL;
	}

	FUNC5(&cs->lock, flags);
}