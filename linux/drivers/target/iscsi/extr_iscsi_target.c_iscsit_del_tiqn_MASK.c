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
struct iscsi_tiqn {int /*<<< orphan*/  tiqn; int /*<<< orphan*/  tiqn_index; int /*<<< orphan*/  tiqn_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iscsi_tiqn*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_tiqn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_tiqn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tiqn_idr ; 
 int /*<<< orphan*/  tiqn_lock ; 

void FUNC9(struct iscsi_tiqn *tiqn)
{
	/*
	 * iscsit_set_tiqn_shutdown sets tiqn->tiqn_state = TIQN_STATE_SHUTDOWN
	 * while holding tiqn->tiqn_state_lock.  This means that all subsequent
	 * attempts to access this struct iscsi_tiqn will fail from both transport
	 * fabric and control code paths.
	 */
	if (FUNC1(tiqn) < 0) {
		FUNC6("iscsit_set_tiqn_shutdown() failed\n");
		return;
	}

	FUNC2(tiqn);

	FUNC7(&tiqn_lock);
	FUNC4(&tiqn->tiqn_list);
	FUNC0(&tiqn_idr, tiqn->tiqn_index);
	FUNC8(&tiqn_lock);

	FUNC5("CORE[0] - Deleted iSCSI Target IQN: %s\n",
			tiqn->tiqn);
	FUNC3(tiqn);
}