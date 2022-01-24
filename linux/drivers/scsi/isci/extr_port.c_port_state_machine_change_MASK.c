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
struct sci_base_state_machine {int current_state_id; } ;
struct isci_port {int ready_exit; struct sci_base_state_machine sm; } ;
typedef  enum sci_port_states { ____Placeholder_sci_port_states } sci_port_states ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sci_base_state_machine*,int) ; 

__attribute__((used)) static void FUNC2(struct isci_port *iport,
				      enum sci_port_states state)
{
	struct sci_base_state_machine *sm = &iport->sm;
	enum sci_port_states old_state = sm->current_state_id;

	if (FUNC0(old_state) && !FUNC0(state))
		iport->ready_exit = true;

	FUNC1(sm, state);
	iport->ready_exit = false;
}