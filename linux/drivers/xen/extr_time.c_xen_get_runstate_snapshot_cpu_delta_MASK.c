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
typedef  int u64 ;
struct vcpu_runstate_info {int /*<<< orphan*/  state_entry_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vcpu_runstate_info FUNC1 (struct vcpu_runstate_info) ; 
 int XEN_RUNSTATE_UPDATE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct vcpu_runstate_info* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  xen_runstate ; 

__attribute__((used)) static void FUNC6(
			      struct vcpu_runstate_info *res, unsigned int cpu)
{
	u64 state_time;
	struct vcpu_runstate_info *state;

	FUNC0(FUNC4());

	state = FUNC3(&xen_runstate, cpu);

	do {
		state_time = FUNC2(&state->state_entry_time);
		FUNC5();	/* Hypervisor might update data. */
		*res = FUNC1(*state);
		FUNC5();	/* Hypervisor might update data. */
	} while (FUNC2(&state->state_entry_time) != state_time ||
		 (state_time & XEN_RUNSTATE_UPDATE));
}