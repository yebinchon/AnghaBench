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
struct iscsi_tpg_np {int /*<<< orphan*/  tpg_np_comp; int /*<<< orphan*/  tpg_np_kref; } ;
struct iscsi_portal_group {int dummy; } ;
struct iscsi_np {scalar_t__ np_thread_state; int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  np_restart_comp; scalar_t__ np_thread; int /*<<< orphan*/  np_reset_count; } ;

/* Variables and functions */
 scalar_t__ ISCSI_NP_THREAD_INACTIVE ; 
 scalar_t__ ISCSI_NP_THREAD_RESET ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iscsit_login_kref_put ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(
	struct iscsi_np *np,
	struct iscsi_tpg_np *tpg_np,
	struct iscsi_portal_group *tpg,
	bool shutdown)
{
	FUNC3(&np->np_thread_lock);
	if (np->np_thread_state == ISCSI_NP_THREAD_INACTIVE) {
		FUNC4(&np->np_thread_lock);
		return 0;
	}
	np->np_thread_state = ISCSI_NP_THREAD_RESET;
	FUNC0(&np->np_reset_count);

	if (np->np_thread) {
		FUNC4(&np->np_thread_lock);
		FUNC2(SIGINT, np->np_thread, 1);
		FUNC5(&np->np_restart_comp);
		FUNC3(&np->np_thread_lock);
	}
	FUNC4(&np->np_thread_lock);

	if (tpg_np && shutdown) {
		FUNC1(&tpg_np->tpg_np_kref, iscsit_login_kref_put);

		FUNC5(&tpg_np->tpg_np_comp);
	}

	return 0;
}