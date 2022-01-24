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
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_tiqn {int /*<<< orphan*/  tiqn; int /*<<< orphan*/  tiqn_tpg_lock; int /*<<< orphan*/  tiqn_ntpgs; } ;
struct iscsi_portal_group {int /*<<< orphan*/  tpgt; int /*<<< orphan*/  tpg_list; int /*<<< orphan*/  tpg_state_lock; int /*<<< orphan*/  tpg_state; int /*<<< orphan*/  tpg_se_tpg; int /*<<< orphan*/ * param_list; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  TPG_STATE_FREE ; 
 int /*<<< orphan*/  TPG_STATE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iscsi_portal_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_portal_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
	struct iscsi_tiqn *tiqn,
	struct iscsi_portal_group *tpg,
	int force)
{
	u8 old_state = tpg->tpg_state;

	FUNC7(&tpg->tpg_state_lock);
	tpg->tpg_state = TPG_STATE_INACTIVE;
	FUNC8(&tpg->tpg_state_lock);

	if (FUNC2(tpg, force) < 0) {
		FUNC6("Unable to delete iSCSI Target Portal Group:"
			" %hu while active sessions exist, and force=0\n",
			tpg->tpgt);
		tpg->tpg_state = old_state;
		return -EPERM;
	}

	if (tpg->param_list) {
		FUNC1(tpg->param_list);
		tpg->param_list = NULL;
	}

	FUNC0(&tpg->tpg_se_tpg);

	FUNC7(&tpg->tpg_state_lock);
	tpg->tpg_state = TPG_STATE_FREE;
	FUNC8(&tpg->tpg_state_lock);

	FUNC7(&tiqn->tiqn_tpg_lock);
	tiqn->tiqn_ntpgs--;
	FUNC4(&tpg->tpg_list);
	FUNC8(&tiqn->tiqn_tpg_lock);

	FUNC5("CORE[%s]_TPG[%hu] - Deleted iSCSI Target Portal Group\n",
			tiqn->tiqn, tpg->tpgt);

	FUNC3(tpg);
	return 0;
}