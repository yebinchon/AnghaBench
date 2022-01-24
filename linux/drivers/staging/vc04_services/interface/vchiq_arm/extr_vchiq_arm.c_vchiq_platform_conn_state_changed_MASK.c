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
typedef  int /*<<< orphan*/  threadname ;
struct vchiq_state {int id; scalar_t__ conn_state; } ;
struct vchiq_arm_state {int first_connect; int /*<<< orphan*/  susp_res_lock; int /*<<< orphan*/  ka_thread; } ;
typedef  int /*<<< orphan*/  VCHIQ_CONNSTATE_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  vchiq_keepalive_thread_func ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vchiq_arm_state* FUNC6 (struct vchiq_state*) ; 
 int /*<<< orphan*/  vchiq_susp_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct vchiq_state *state,
				       VCHIQ_CONNSTATE_T oldstate,
				       VCHIQ_CONNSTATE_T newstate)
{
	struct vchiq_arm_state *arm_state = FUNC6(state);

	FUNC5(vchiq_susp_log_level, "%d: %s->%s", state->id,
		FUNC1(oldstate), FUNC1(newstate));
	if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
		FUNC8(&arm_state->susp_res_lock);
		if (!arm_state->first_connect) {
			char threadname[16];

			arm_state->first_connect = 1;
			FUNC9(&arm_state->susp_res_lock);
			FUNC3(threadname, sizeof(threadname), "vchiq-keep/%d",
				state->id);
			arm_state->ka_thread = FUNC2(
				&vchiq_keepalive_thread_func,
				(void *)state,
				threadname);
			if (FUNC0(arm_state->ka_thread)) {
				FUNC4(vchiq_susp_log_level,
					"vchiq: FATAL: couldn't create thread %s",
					threadname);
			} else {
				FUNC7(arm_state->ka_thread);
			}
		} else
			FUNC9(&arm_state->susp_res_lock);
	}
}