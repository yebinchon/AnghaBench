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
struct vchiq_state {size_t conn_state; int /*<<< orphan*/  id; } ;
typedef  size_t VCHIQ_CONNSTATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * conn_state_names ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_state*,size_t,size_t) ; 

inline void
FUNC2(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate)
{
	VCHIQ_CONNSTATE_T oldstate = state->conn_state;

	FUNC0(vchiq_core_log_level, "%d: %s->%s", state->id,
		conn_state_names[oldstate],
		conn_state_names[newstate]);
	state->conn_state = newstate;
	FUNC1(state, oldstate, newstate);
}