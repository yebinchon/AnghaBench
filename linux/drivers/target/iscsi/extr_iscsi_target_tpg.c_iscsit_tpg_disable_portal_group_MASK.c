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
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_tiqn {int /*<<< orphan*/  tiqn_tpg_lock; int /*<<< orphan*/  tiqn_active_tpgs; } ;
struct iscsi_portal_group {int /*<<< orphan*/  tpgt; struct iscsi_tiqn* tpg_tiqn; int /*<<< orphan*/  tpg_state_lock; int /*<<< orphan*/  tpg_state; } ;
struct TYPE_2__ {struct iscsi_portal_group* discovery_tpg; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  TPG_STATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_portal_group*,int) ; 
 TYPE_1__* iscsit_global ; 
 scalar_t__ FUNC1 (struct iscsi_portal_group*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iscsi_portal_group *tpg, int force)
{
	struct iscsi_tiqn *tiqn;
	u8 old_state = tpg->tpg_state;

	FUNC4(&tpg->tpg_state_lock);
	if (tpg->tpg_state == TPG_STATE_INACTIVE) {
		FUNC3("iSCSI Target Portal Group: %hu is already"
			" inactive, ignoring request.\n", tpg->tpgt);
		FUNC5(&tpg->tpg_state_lock);
		return -EINVAL;
	}
	tpg->tpg_state = TPG_STATE_INACTIVE;
	FUNC5(&tpg->tpg_state_lock);

	FUNC0(tpg, false);

	if (FUNC1(tpg, force) < 0) {
		FUNC4(&tpg->tpg_state_lock);
		tpg->tpg_state = old_state;
		FUNC5(&tpg->tpg_state_lock);
		FUNC3("Unable to disable iSCSI Target Portal Group:"
			" %hu while active sessions exist, and force=0\n",
			tpg->tpgt);
		return -EPERM;
	}

	tiqn = tpg->tpg_tiqn;
	if (!tiqn || (tpg == iscsit_global->discovery_tpg))
		return 0;

	FUNC4(&tiqn->tiqn_tpg_lock);
	tiqn->tiqn_active_tpgs--;
	FUNC2("iSCSI_TPG[%hu] - Disabled iSCSI Target Portal Group\n",
			tpg->tpgt);
	FUNC5(&tiqn->tiqn_tpg_lock);

	return 0;
}