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
struct TYPE_2__ {int /*<<< orphan*/  cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_state; scalar_t__ tg_pt_gp_trans_delay_msecs; int /*<<< orphan*/  tg_pt_gp_transition_mutex; int /*<<< orphan*/  tg_pt_gp_id; TYPE_1__ tg_pt_gp_group; scalar_t__ tg_pt_gp_write_metadata; int /*<<< orphan*/  tg_pt_gp_alua_access_status; } ;

/* Variables and functions */
 int ALUA_ACCESS_STATE_TRANSITION ; 
 int /*<<< orphan*/  ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG ; 
 int /*<<< orphan*/  ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct t10_alua_tg_pt_gp*) ; 
 int /*<<< orphan*/  FUNC3 (struct t10_alua_tg_pt_gp*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	int new_state,
	int explicit)
{
	int prev_state;

	FUNC5(&tg_pt_gp->tg_pt_gp_transition_mutex);
	/* Nothing to be done here */
	if (tg_pt_gp->tg_pt_gp_alua_access_state == new_state) {
		FUNC6(&tg_pt_gp->tg_pt_gp_transition_mutex);
		return 0;
	}

	if (explicit && new_state == ALUA_ACCESS_STATE_TRANSITION) {
		FUNC6(&tg_pt_gp->tg_pt_gp_transition_mutex);
		return -EAGAIN;
	}

	/*
	 * Save the old primary ALUA access state, and set the current state
	 * to ALUA_ACCESS_STATE_TRANSITION.
	 */
	prev_state = tg_pt_gp->tg_pt_gp_alua_access_state;
	tg_pt_gp->tg_pt_gp_alua_access_state = ALUA_ACCESS_STATE_TRANSITION;
	tg_pt_gp->tg_pt_gp_alua_access_status = (explicit) ?
				ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG :
				ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA;

	FUNC2(tg_pt_gp);

	if (new_state == ALUA_ACCESS_STATE_TRANSITION) {
		FUNC6(&tg_pt_gp->tg_pt_gp_transition_mutex);
		return 0;
	}

	/*
	 * Check for the optional ALUA primary state transition delay
	 */
	if (tg_pt_gp->tg_pt_gp_trans_delay_msecs != 0)
		FUNC4(tg_pt_gp->tg_pt_gp_trans_delay_msecs);

	/*
	 * Set the current primary ALUA access state to the requested new state
	 */
	tg_pt_gp->tg_pt_gp_alua_access_state = new_state;

	/*
	 * Update the ALUA metadata buf that has been allocated in
	 * core_alua_do_port_transition(), this metadata will be written
	 * to struct file.
	 *
	 * Note that there is the case where we do not want to update the
	 * metadata when the saved metadata is being parsed in userspace
	 * when setting the existing port access state and access status.
	 *
	 * Also note that the failure to write out the ALUA metadata to
	 * struct file does NOT affect the actual ALUA transition.
	 */
	if (tg_pt_gp->tg_pt_gp_write_metadata) {
		FUNC3(tg_pt_gp);
	}

	FUNC7("Successful %s ALUA transition TG PT Group: %s ID: %hu"
		" from primary access state %s to %s\n", (explicit) ? "explicit" :
		"implicit", FUNC0(&tg_pt_gp->tg_pt_gp_group.cg_item),
		tg_pt_gp->tg_pt_gp_id,
		FUNC1(prev_state),
		FUNC1(new_state));

	FUNC2(tg_pt_gp);

	FUNC6(&tg_pt_gp->tg_pt_gp_transition_mutex);
	return 0;
}