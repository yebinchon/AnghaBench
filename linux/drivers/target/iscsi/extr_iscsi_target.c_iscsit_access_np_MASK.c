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
struct iscsi_portal_group {scalar_t__ tpg_state; int /*<<< orphan*/  tpg_state_lock; int /*<<< orphan*/  np_login_sem; } ;
struct iscsi_np {scalar_t__ np_thread_state; int /*<<< orphan*/  np_thread_lock; } ;

/* Variables and functions */
 scalar_t__ ISCSI_NP_THREAD_ACTIVE ; 
 scalar_t__ TPG_STATE_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iscsi_np *np, struct iscsi_portal_group *tpg)
{
	int ret;
	/*
	 * Determine if the network portal is accepting storage traffic.
	 */
	FUNC1(&np->np_thread_lock);
	if (np->np_thread_state != ISCSI_NP_THREAD_ACTIVE) {
		FUNC2(&np->np_thread_lock);
		return -1;
	}
	FUNC2(&np->np_thread_lock);
	/*
	 * Determine if the portal group is accepting storage traffic.
	 */
	FUNC1(&tpg->tpg_state_lock);
	if (tpg->tpg_state != TPG_STATE_ACTIVE) {
		FUNC2(&tpg->tpg_state_lock);
		return -1;
	}
	FUNC2(&tpg->tpg_state_lock);

	/*
	 * Here we serialize access across the TIQN+TPG Tuple.
	 */
	ret = FUNC0(&tpg->np_login_sem);
	if (ret != 0)
		return -1;

	FUNC1(&tpg->tpg_state_lock);
	if (tpg->tpg_state != TPG_STATE_ACTIVE) {
		FUNC2(&tpg->tpg_state_lock);
		FUNC3(&tpg->np_login_sem);
		return -1;
	}
	FUNC2(&tpg->tpg_state_lock);

	return 0;
}